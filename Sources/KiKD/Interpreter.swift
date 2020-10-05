import Antlr4

// We just got the Parser working. Now its time to implement the Interpreter.

class Interpreter {
    var lexer: KDLexer
    var parser: KDParser
    
    init(_ stream: CharStream) throws {
        
        lexer = KDLexer(stream)
        
        let vocab = lexer.getVocabulary()
        let tokens = try lexer.getAllTokens()
        
        for token in tokens {
            print("\(String(describing:vocab.getSymbolicName(token.getType())))")
        }
        
        parser = try KDParser(CommonTokenStream(lexer))
    }
}
