import Antlr4
import Foundation
import KiCore

class Interpreter {

    init() {}
    
    /**
     Reads KD code from the stream. Throws `ParseError`
     
     - parameters:
       - stream: A stream containing KD code
     */
    func read(_ stream: CharStream) throws -> [Tag] {
        let lexer = KDLexer(stream)
        
        /*
        let vocab = lexer.getVocabulary()
        let tokens = try lexer.getAllTokens()
        
        for token in tokens {
            print("\(String(describing:vocab.getSymbolicName(token.getType())))")
        }
        */
        
        let parser = try KDParser(CommonTokenStream(lexer))

        let tagListCtx = try parser.tagList()
        var tags = [Tag]()
        
        let childCount = tagListCtx.tag().count
        
        if childCount == 0 {
            return tags
        }

        for i in 0..<childCount {
            let child = tagListCtx.tag(i)!
            tags.append(try makeTag(child))
        }

        return tags
    }
    
    func read(_ code: String) throws -> [Tag] {
        return try read(ANTLRInputStream(code))
    }
    
    func makeTag(_ ctx:KDParser.TagContext) throws -> Tag {
        let nsNameCtx = ctx.nsName()
        var namespace = ""
        var name = ""

        if nsNameCtx != nil {
            if(nsNameCtx!.COLON() != nil) {
                namespace = nsNameCtx!.ID(0)!.getText().trim()
                name = nsNameCtx!.ID(1)!.getText().trim()
            } else {
                name = nsNameCtx!.ID(0)!.getText().trim()
            }
        }

        let tag = Tag(name, namespace:namespace)
        
        // Add Annotations ////
        let annotationCtx = ctx.annotationList()
        if(annotationCtx != nil) {
            for anno in annotationCtx!.annotation() {
                tag.annotations.append(try makeAnnotation(anno))
            }
        }

        // Add Values ////

        let valuesCtx = ctx.valueList()

        if(valuesCtx != nil) {
            for vc in valuesCtx!.value() {
                tag.values.append(try makeValue(vc))
            }
        }

        // Add Attributes ////

        let attsCtx = ctx.attributeList()

        if(attsCtx != nil) {
            for att in attsCtx!.attribute() {
                let attNSNameCtx = att.nsName()
                var attNamespace = ""
                var attName = ""

                if(attNSNameCtx != nil) {
                    if(attNSNameCtx!.COLON() != nil) {
                        attNamespace = attNSNameCtx!.ID(0)!.getText().trim()
                        attName = attNSNameCtx!.ID(1)!.getText().trim()
                    } else {
                        attName = attNSNameCtx!.ID(0)!.getText().trim()
                    }
                }

                tag.attributes[NSID(attName, namespace:attNamespace)] = try makeValue(att.value()!)
            }
        }

        // Adding child tags
        let tagListContext = ctx.tagList()

        if(tagListContext != nil) {
            let tagContexts  = tagListContext!.tag()
            for tagContext in tagContexts {
                tag.children.append(try makeTag(tagContext))
            }
        }
        
        return tag
    }

    private func makeAnnotation(_ annoCtx: KDParser.AnnotationContext) throws -> Annotation {
        let nsNameCtx = annoCtx.nsName()
        var namespace = ""; var name = ""

        if(nsNameCtx != nil) {
            if nsNameCtx!.COLON() != nil {
                namespace = nsNameCtx!.ID(0)!.getText().trim()
                name = nsNameCtx!.ID(1)!.getText().trim()
            } else {
                name = nsNameCtx!.ID(0)!.getText().trim()
            }
        }

        let anno = Annotation(name, namespace:namespace)

        let valuesCtx = annoCtx.valueList()

        // Add Values

        if valuesCtx != nil {
            for vc in valuesCtx!.value() {
                anno.values.append(try makeValue(vc))
            }
        }

        // Add Attributes ////

        let attsCtx = annoCtx.attributeList()

        if attsCtx != nil {
            for att in attsCtx!.attribute() {
                let attNSNameCtx = att.nsName()
                var attNamespace = ""
                var attName = ""

                if(attNSNameCtx != nil) {
                    if attNSNameCtx!.COLON() != nil {
                        attNamespace = attNSNameCtx!.ID(0)!.getText().trim()
                        attName = attNSNameCtx!.ID(1)!.getText().trim()
                    } else {
                        attName = attNSNameCtx!.ID(0)!.getText().trim()
                    }
                }

                anno.attributes[NSID(attName, namespace:attNamespace)] = try makeValue(att.value()!)
            }
        }

        return anno
   }
    
    func makeValue(_ ctx:KDParser.ValueContext) throws -> Any? {
        
        let text = ctx.getText()
        
        //// Strings --- ---
        if ctx.stringLiteral() != nil {
            return try makeString(ctx.stringLiteral()!)
        }

        // Bare strings (IDs treated as strings)
        if ctx.ID() != nil {
            return text
        }
        
        //// Booleans --- ---

        if ctx.TRUE() != nil { return true }

        if ctx.FALSE() != nil { return false }
        
        //// Numbers --- ---
        if ctx.IntegerLiteral() != nil { return Int(text.replaceAll("_", "")) }
        if ctx.LongLiteral() != nil { return Int64(text.replaceAll("_", "")) }
        if ctx.FloatLiteral() != nil { return Float(text.replaceAll("_", "")) }
        if ctx.DoubleLiteral() != nil { return Double(text.replaceAll("_", "")) }
        if ctx.DecimalLiteral() != nil { return Decimal(string: text.replaceAll("_", "")) }
        if ctx.CharLiteral() != nil { return try text.resolveEscapes()[1] }
        if ctx.NULL() != nil { return nil }
        
        //// URLs --- --- TODO
        //// Quantities --- --- TODO
        //// Ranges --- --- TODO
        //// Lists --- --- TODO
        //// Maps --- --- TODO
        
        throw ParseError("Unknown literal \(text)")
    }
    
    private func makeString(_ parentCtx: KDParser.StringLiteralContext) throws -> String {
         var text = parentCtx.getText()

         if parentCtx.SimpleString() != nil  {
            text = try text[1...text.count-2].resolveEscapes()
         } else if parentCtx.RawString() != nil {
            text = text[2...text.count - 2]
         } else if parentCtx.blockString() != nil {
            text = try trimStringBlockLinePrefixesAndNewLines(text[3...text.count - 4].resolveEscapes())
        } else if parentCtx.blockRawString() != nil {
            text = trimStringBlockLinePrefixesAndNewLines(text[4...text.count - 4])
        } else if parentCtx.blockRawAltString() != nil {
            text = trimStringBlockLinePrefixesAndNewLines(text[1...text.count - 2])
        }
        
        return text
    }

     /**
      * KD String Blocks trim the beginning of each line to match the indentation of the
      * closing quotes. Additionally, new lines are removed from the beginning and end
      * of strings to allow for breaking immediately after the opening string block quotes
      * and before the ending block quotes.
      *
      * ### Example
      * ```
      * var text = """
      *     Lorem ipsum dolor sit amet,
      *         consectetur adipiscing elit,
      *     sed do eiusmod tempor incididunt
      *     """
      *  ```
      *
      *  This `text` string's closing quotes (`"""`) are prefixed with four spaces. These
      *  four spaces are removed from the beginning of each line. Additionally the new line
      *  after the opening `"""` and the closing `"""` are removed. The resulting String is
      *  ```
      *  Lorem ipsum dolor sit amet,
      *      consectetur adipiscing elit,
      *  sed do eiusmod tempor incididunt
      *  ```
      *
      *  Note that the four space indent in the second line is preserved. See
      *  [KD Strings](https://github.com/kixi-io/Ki.Docs/wiki/Ki-Data-(KD)#String) for more
      *  details.
      */
     func trimStringBlockLinePrefixesAndNewLines(_ text: String) -> String {

         // TODO: When indent is greater than line start, numbers replace some lines

        if text.isEmpty || !text.contains("\n") {
             return text
        }

         // remove newlines from beginning and end
        var trimmedText = text
        
        if trimmedText.hasPrefix("\n") {
            trimmedText.removeFirst()
        }
            

        var lines = trimmedText.lines // We already checked for empty
        let lastLine = lines.last! // We already checked for at least one newline

        if(lastLine.trim().isEmpty) {

            // find the ws prefix of the last line
            var wsEnd = 0
            for  c in lastLine {
                if !c.isWhitespace { break }
                wsEnd+=1
            }

            if  wsEnd != 0 || lastLine.isEmpty {
                let wsPrefix = lastLine[0..<wsEnd]
                lines.removeLast()

                var buf = ""
                for i in 0..<lines.count {
                    buf.append(lines[i].removePrefix(wsPrefix))
                    if i != lines.count - 1 {
                        buf.append("\n")
                    }
                }

                trimmedText = buf
            }
        }
        return trimmedText
     }
}
