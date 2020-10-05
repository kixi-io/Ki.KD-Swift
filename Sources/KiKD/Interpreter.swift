import Antlr4

class Interpreter {
    var lexer: KDLexer
    var parser: KDParser
    
    init(_ stream: CharStream) throws {
        
        print("I'm here!")
        
        lexer = KDLexer(stream)
        
        let vocab = lexer.getVocabulary()
        let tokens = try lexer.getAllTokens()
        
        for token in tokens {
            print("\(String(describing:vocab.getSymbolicName(token.getType())))")
        }
        
        parser = try KDParser(CommonTokenStream(lexer))
    }
}
