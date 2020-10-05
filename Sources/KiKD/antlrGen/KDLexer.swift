// Generated from KDLexer.g4 by ANTLR 4.8
import Antlr4

open class KDLexer: Lexer {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = KDLexer._ATN.getNumberOfDecisions()
          for i in 0..<length {
          	    decisionToDFA.append(DFA(KDLexer._ATN.getDecisionState(i)!, i))
          }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	static let NULL=1, TRUE=2, FALSE=3, URL=4, FloatLiteral=5, DoubleLiteral=6, 
            DecimalLiteral=7, IntegerLiteral=8, HexLiteral=9, BinLiteral=10, 
            LongLiteral=11, Version=12, SimpleString=13, RawString=14, BlockStringStart=15, 
            BlockRawStringStart=16, BlockRawAltStringStart=17, CharLiteral=18, 
            CompoundDuration=19, DayDuration=20, HourDuration=21, MinuteDuration=22, 
            SecondDuration=23, MillisecondDuration=24, NanosecondDuration=25, 
            Date=26, Time=27, IntegerQuantityLiteral=28, DecimalQuantityLiteral=29, 
            InclusiveRangeOp=30, ExclusiveRangeOp=31, ExclusiveLeftOp=32, 
            ExclusiveRightOp=33, DOT=34, COLON=35, SEMICOLON=36, EQUALS=37, 
            OPEN=38, CLOSE=39, LPAREN=40, RPAREN=41, LSQUARE=42, RSQUARE=43, 
            COMMA=44, SLASH=45, DASH=46, AT=47, PLUS=48, UNDERSCORE=49, 
            BLOB_START=50, ID=51, BlockComment=52, LineComment=53, WS=54, 
            NL=55, BLOB_DATA=56, BLOB_END=57, BLOB_ERROR=58, BlockStringChunk=59, 
            BlockStringEnd=60, BlockStringError=61, BlockRawStringChunk=62, 
            BlockRawStringEnd=63, BlockRawStringError=64, BlockRawAltStringChunk=65, 
            BlockRawAltStringEnd=66

	public
	static let WHITESPACE=2, COMMENTS=3
	public
	static let blob=1, blockString=2, blockRawString=3, blockRawAltString=4
	public
	static let channelNames: [String] = [
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN", "WHITESPACE", "COMMENTS"
	]

	public
	static let modeNames: [String] = [
		"DEFAULT_MODE", "blob", "blockString", "blockRawString", "blockRawAltString"
	]

	public
	static let ruleNames: [String] = [
		"NULL", "TRUE", "FALSE", "URL", "DecDigit", "DecDigitNoZero", "DecDigitOrSeparator", 
		"DecDigits", "DoubleExponent", "NonZeroNumberPart", "NumberPart", "ASCIIAlpha", 
		"FloatLiteral", "DoubleLiteral", "DecimalLiteral", "IntegerLiteral", "HexDigit", 
		"HexDigitOrSeparator", "HexLiteral", "BinDigit", "BinDigitOrSeparator", 
		"BinLiteral", "LongLiteral", "Number", "Version", "VersionQualifierAndNum", 
		"SimpleString", "RawString", "BlockStringStart", "BlockRawStringStart", 
		"BlockRawAltStringStart", "UniCharacterLiteral", "EscapedIdentifier", 
		"Esc", "Unicode", "SafeCodePoint", "CharSafeCodePoint", "CharLiteral", 
		"DAYS", "HOURS", "MINUTES", "SECONDS", "MILLIS", "NANOS", "CompoundDuration", 
		"DayDuration", "HourDuration", "MinuteDuration", "SecondDuration", "MillisecondDuration", 
		"NanosecondDuration", "Date", "Time", "TimeZone", "IntegerQuantityLiteral", 
		"DecimalQuantityLiteral", "InclusiveRangeOp", "ExclusiveRangeOp", "ExclusiveLeftOp", 
		"ExclusiveRightOp", "DOT", "COLON", "SEMICOLON", "EQUALS", "OPEN", "CLOSE", 
		"LPAREN", "RPAREN", "LSQUARE", "RSQUARE", "COMMA", "SLASH", "DASH", "AT", 
		"PLUS", "UNDERSCORE", "BLOB_START", "IDStart", "IDChar", "ID", "VersionQualifier", 
		"UnitID", "BlockComment", "LineComment", "WS", "NL", "BLOB_DATA", "BLOB_END", 
		"BLOB_ERROR", "BlockStringChunk", "BlockStringEnd", "BlockStringError", 
		"BlockStringChar", "BlockRawStringChunk", "BlockRawStringEnd", "BlockRawStringError", 
		"BlockRawStringChar", "BlockRawAltStringChunk", "BlockRawAltStringEnd"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 
		nil, nil, "'@\"\"\"'", nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 
		nil, nil, nil, "'..'", "'<..<'", "'<..'", "'..<'", "'.'", "':'", "';'", 
		"'='", "'{'", "'}'", "'('", nil, "'['", "']'", "','", "'/'", "'-'", "'@'", 
		"'+'", "'_'", "'.blob('"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, "NULL", "TRUE", "FALSE", "URL", "FloatLiteral", "DoubleLiteral", 
		"DecimalLiteral", "IntegerLiteral", "HexLiteral", "BinLiteral", "LongLiteral", 
		"Version", "SimpleString", "RawString", "BlockStringStart", "BlockRawStringStart", 
		"BlockRawAltStringStart", "CharLiteral", "CompoundDuration", "DayDuration", 
		"HourDuration", "MinuteDuration", "SecondDuration", "MillisecondDuration", 
		"NanosecondDuration", "Date", "Time", "IntegerQuantityLiteral", "DecimalQuantityLiteral", 
		"InclusiveRangeOp", "ExclusiveRangeOp", "ExclusiveLeftOp", "ExclusiveRightOp", 
		"DOT", "COLON", "SEMICOLON", "EQUALS", "OPEN", "CLOSE", "LPAREN", "RPAREN", 
		"LSQUARE", "RSQUARE", "COMMA", "SLASH", "DASH", "AT", "PLUS", "UNDERSCORE", 
		"BLOB_START", "ID", "BlockComment", "LineComment", "WS", "NL", "BLOB_DATA", 
		"BLOB_END", "BLOB_ERROR", "BlockStringChunk", "BlockStringEnd", "BlockStringError", 
		"BlockRawStringChunk", "BlockRawStringEnd", "BlockRawStringError", "BlockRawAltStringChunk", 
		"BlockRawAltStringEnd"
	]
	public
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)


	override open
	func getVocabulary() -> Vocabulary {
		return KDLexer.VOCABULARY
	}

	public
	required init(_ input: CharStream) {
	    RuntimeMetaData.checkVersion("4.8", RuntimeMetaData.VERSION)
		super.init(input)
		_interp = LexerATNSimulator(self, KDLexer._ATN, KDLexer._decisionToDFA, KDLexer._sharedContextCache)
	}

	override open
	func getGrammarFileName() -> String { return "KDLexer.g4" }

	override open
	func getRuleNames() -> [String] { return KDLexer.ruleNames }

	override open
	func getSerializedATN() -> String { return KDLexer._serializedATN }

	override open
	func getChannelNames() -> [String] { return KDLexer.channelNames }

	override open
	func getModeNames() -> [String] { return KDLexer.modeNames }

	override open
	func getATN() -> ATN { return KDLexer._ATN }


	public
	static let _serializedATN: String = KDLexerATN().jsonString

	public
	static let _ATN: ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}
