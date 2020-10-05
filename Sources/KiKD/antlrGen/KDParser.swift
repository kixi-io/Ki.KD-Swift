// Generated from KDParser.g4 by ANTLR 4.8
import Antlr4

open class KDParser: Parser {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = KDParser._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(KDParser._ATN.getDecisionState(i)!, i))
           }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	enum Tokens: Int {
		case EOF = -1, NULL = 1, TRUE = 2, FALSE = 3, URL = 4, FloatLiteral = 5, 
                 DoubleLiteral = 6, DecimalLiteral = 7, IntegerLiteral = 8, 
                 HexLiteral = 9, BinLiteral = 10, LongLiteral = 11, Version = 12, 
                 SimpleString = 13, RawString = 14, BlockStringStart = 15, 
                 BlockRawStringStart = 16, BlockRawAltStringStart = 17, 
                 CharLiteral = 18, CompoundDuration = 19, DayDuration = 20, 
                 HourDuration = 21, MinuteDuration = 22, SecondDuration = 23, 
                 MillisecondDuration = 24, NanosecondDuration = 25, Date = 26, 
                 Time = 27, IntegerQuantityLiteral = 28, DecimalQuantityLiteral = 29, 
                 InclusiveRangeOp = 30, ExclusiveRangeOp = 31, ExclusiveLeftOp = 32, 
                 ExclusiveRightOp = 33, DOT = 34, COLON = 35, SEMICOLON = 36, 
                 EQUALS = 37, OPEN = 38, CLOSE = 39, LPAREN = 40, RPAREN = 41, 
                 LSQUARE = 42, RSQUARE = 43, COMMA = 44, SLASH = 45, DASH = 46, 
                 AT = 47, PLUS = 48, UNDERSCORE = 49, BLOB_START = 50, ID = 51, 
                 BlockComment = 52, LineComment = 53, WS = 54, NL = 55, 
                 BLOB_DATA = 56, BLOB_END = 57, BLOB_ERROR = 58, BlockStringChunk = 59, 
                 BlockStringEnd = 60, BlockStringError = 61, BlockRawStringChunk = 62, 
                 BlockRawStringEnd = 63, BlockRawStringError = 64, BlockRawAltStringChunk = 65, 
                 BlockRawAltStringEnd = 66
	}

	public
	static let RULE_tagList = 0, RULE_tag = 1, RULE_value = 2, RULE_stringLiteral = 3, 
            RULE_blockString = 4, RULE_blockRawString = 5, RULE_blockRawAltString = 6, 
            RULE_duration = 7, RULE_quantity = 8, RULE_rangeOp = 9, RULE_intRange = 10, 
            RULE_longRange = 11, RULE_floatRange = 12, RULE_doubleRange = 13, 
            RULE_decimalRange = 14, RULE_durationRange = 15, RULE_dateTimeRange = 16, 
            RULE_versionRange = 17, RULE_charRange = 18, RULE_stringRange = 19, 
            RULE_quantityRange = 20, RULE_range = 21, RULE_blob = 22, RULE_valueList = 23, 
            RULE_attribute = 24, RULE_attributeList = 25, RULE_nsName = 26, 
            RULE_list = 27, RULE_pair = 28, RULE_map = 29, RULE_annotation = 30, 
            RULE_annotationList = 31, RULE_dateTime = 32

	public
	static let ruleNames: [String] = [
		"tagList", "tag", "value", "stringLiteral", "blockString", "blockRawString", 
		"blockRawAltString", "duration", "quantity", "rangeOp", "intRange", "longRange", 
		"floatRange", "doubleRange", "decimalRange", "durationRange", "dateTimeRange", 
		"versionRange", "charRange", "stringRange", "quantityRange", "range", 
		"blob", "valueList", "attribute", "attributeList", "nsName", "list", "pair", 
		"map", "annotation", "annotationList", "dateTime"
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
	func getGrammarFileName() -> String { return "KDParser.g4" }

	override open
	func getRuleNames() -> [String] { return KDParser.ruleNames }

	override open
	func getSerializedATN() -> String { return KDParser._serializedATN }

	override open
	func getATN() -> ATN { return KDParser._ATN }


	override open
	func getVocabulary() -> Vocabulary {
	    return KDParser.VOCABULARY
	}

	override public
	init(_ input:TokenStream) throws {
	    RuntimeMetaData.checkVersion("4.8", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,KDParser._ATN,KDParser._decisionToDFA, KDParser._sharedContextCache)
	}


	public class TagListContext: ParserRuleContext {
			open
			func NL() -> [TerminalNode] {
				return getTokens(KDParser.Tokens.NL.rawValue)
			}
			open
			func NL(_ i:Int) -> TerminalNode? {
				return getToken(KDParser.Tokens.NL.rawValue, i)
			}
			open
			func tag() -> [TagContext] {
				return getRuleContexts(TagContext.self)
			}
			open
			func tag(_ i: Int) -> TagContext? {
				return getRuleContext(TagContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_tagList
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterTagList(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitTagList(self)
			}
		}
	}
	@discardableResult
	 open func tagList() throws -> TagListContext {
        let _localctx: TagListContext = TagListContext(_ctx, getState())
		try enterRule(_localctx, 0, KDParser.RULE_tagList)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(69)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == KDParser.Tokens.NL.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(66)
		 		try match(KDParser.Tokens.NL.rawValue)


		 		setState(71)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(81)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, KDParser.Tokens.NULL.rawValue,KDParser.Tokens.TRUE.rawValue,KDParser.Tokens.FALSE.rawValue,KDParser.Tokens.URL.rawValue,KDParser.Tokens.FloatLiteral.rawValue,KDParser.Tokens.DoubleLiteral.rawValue,KDParser.Tokens.DecimalLiteral.rawValue,KDParser.Tokens.IntegerLiteral.rawValue,KDParser.Tokens.HexLiteral.rawValue,KDParser.Tokens.BinLiteral.rawValue,KDParser.Tokens.LongLiteral.rawValue,KDParser.Tokens.Version.rawValue,KDParser.Tokens.SimpleString.rawValue,KDParser.Tokens.RawString.rawValue,KDParser.Tokens.BlockStringStart.rawValue,KDParser.Tokens.BlockRawStringStart.rawValue,KDParser.Tokens.BlockRawAltStringStart.rawValue,KDParser.Tokens.CharLiteral.rawValue,KDParser.Tokens.CompoundDuration.rawValue,KDParser.Tokens.DayDuration.rawValue,KDParser.Tokens.HourDuration.rawValue,KDParser.Tokens.MinuteDuration.rawValue,KDParser.Tokens.SecondDuration.rawValue,KDParser.Tokens.MillisecondDuration.rawValue,KDParser.Tokens.NanosecondDuration.rawValue,KDParser.Tokens.Date.rawValue,KDParser.Tokens.IntegerQuantityLiteral.rawValue,KDParser.Tokens.DecimalQuantityLiteral.rawValue,KDParser.Tokens.LSQUARE.rawValue,KDParser.Tokens.AT.rawValue,KDParser.Tokens.UNDERSCORE.rawValue,KDParser.Tokens.BLOB_START.rawValue,KDParser.Tokens.ID.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(72)
		 		try tag()
		 		setState(76)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == KDParser.Tokens.NL.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(73)
		 			try match(KDParser.Tokens.NL.rawValue)


		 			setState(78)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}


		 		setState(83)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TagContext: ParserRuleContext {
			open
			func attributeList() -> AttributeListContext? {
				return getRuleContext(AttributeListContext.self, 0)
			}
			open
			func SEMICOLON() -> TerminalNode? {
				return getToken(KDParser.Tokens.SEMICOLON.rawValue, 0)
			}
			open
			func NL() -> [TerminalNode] {
				return getTokens(KDParser.Tokens.NL.rawValue)
			}
			open
			func NL(_ i:Int) -> TerminalNode? {
				return getToken(KDParser.Tokens.NL.rawValue, i)
			}
			open
			func nsName() -> NsNameContext? {
				return getRuleContext(NsNameContext.self, 0)
			}
			open
			func valueList() -> ValueListContext? {
				return getRuleContext(ValueListContext.self, 0)
			}
			open
			func OPEN() -> TerminalNode? {
				return getToken(KDParser.Tokens.OPEN.rawValue, 0)
			}
			open
			func tagList() -> TagListContext? {
				return getRuleContext(TagListContext.self, 0)
			}
			open
			func CLOSE() -> TerminalNode? {
				return getToken(KDParser.Tokens.CLOSE.rawValue, 0)
			}
			open
			func annotationList() -> AnnotationListContext? {
				return getRuleContext(AnnotationListContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_tag
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterTag(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitTag(self)
			}
		}
	}
	@discardableResult
	 open func tag() throws -> TagContext {
        let _localctx: TagContext = TagContext(_ctx, getState())
		try enterRule(_localctx, 2, KDParser.RULE_tag)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(98)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,6, _ctx)) {
		 	case 1:
		 		setState(91)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == KDParser.Tokens.AT.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(84)
		 			try annotationList()
		 			setState(88)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 			while (//closure
		 			 { () -> Bool in
		 			      let testSet: Bool = _la == KDParser.Tokens.NL.rawValue
		 			      return testSet
		 			 }()) {
		 				setState(85)
		 				try match(KDParser.Tokens.NL.rawValue)


		 				setState(90)
		 				try _errHandler.sync(self)
		 				_la = try _input.LA(1)
		 			}

		 		}

		 		setState(93)
		 		try nsName()
		 		setState(95)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,5,_ctx)) {
		 		case 1:
		 			setState(94)
		 			try valueList()

		 			break
		 		default: break
		 		}


		 		break
		 	case 2:
		 		setState(97)
		 		try valueList()


		 		break
		 	default: break
		 	}
		 	setState(101)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,7,_ctx)) {
		 	case 1:
		 		setState(100)
		 		try attributeList()

		 		break
		 	default: break
		 	}
		 	setState(109)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,8,_ctx)) {
		 	case 1:
		 		setState(103)
		 		try match(KDParser.Tokens.SEMICOLON.rawValue)

		 		break
		 	case 2:
		 		setState(104)
		 		try match(KDParser.Tokens.NL.rawValue)

		 		break
		 	case 3:
		 		setState(105)
		 		try match(KDParser.Tokens.OPEN.rawValue)
		 		setState(106)
		 		try tagList()
		 		setState(107)
		 		try match(KDParser.Tokens.CLOSE.rawValue)


		 		break
		 	default: break
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ValueContext: ParserRuleContext {
			open
			func stringLiteral() -> StringLiteralContext? {
				return getRuleContext(StringLiteralContext.self, 0)
			}
			open
			func CharLiteral() -> TerminalNode? {
				return getToken(KDParser.Tokens.CharLiteral.rawValue, 0)
			}
			open
			func ID() -> TerminalNode? {
				return getToken(KDParser.Tokens.ID.rawValue, 0)
			}
			open
			func IntegerLiteral() -> TerminalNode? {
				return getToken(KDParser.Tokens.IntegerLiteral.rawValue, 0)
			}
			open
			func HexLiteral() -> TerminalNode? {
				return getToken(KDParser.Tokens.HexLiteral.rawValue, 0)
			}
			open
			func BinLiteral() -> TerminalNode? {
				return getToken(KDParser.Tokens.BinLiteral.rawValue, 0)
			}
			open
			func LongLiteral() -> TerminalNode? {
				return getToken(KDParser.Tokens.LongLiteral.rawValue, 0)
			}
			open
			func FloatLiteral() -> TerminalNode? {
				return getToken(KDParser.Tokens.FloatLiteral.rawValue, 0)
			}
			open
			func DoubleLiteral() -> TerminalNode? {
				return getToken(KDParser.Tokens.DoubleLiteral.rawValue, 0)
			}
			open
			func DecimalLiteral() -> TerminalNode? {
				return getToken(KDParser.Tokens.DecimalLiteral.rawValue, 0)
			}
			open
			func TRUE() -> TerminalNode? {
				return getToken(KDParser.Tokens.TRUE.rawValue, 0)
			}
			open
			func FALSE() -> TerminalNode? {
				return getToken(KDParser.Tokens.FALSE.rawValue, 0)
			}
			open
			func NULL() -> TerminalNode? {
				return getToken(KDParser.Tokens.NULL.rawValue, 0)
			}
			open
			func list() -> ListContext? {
				return getRuleContext(ListContext.self, 0)
			}
			open
			func map() -> MapContext? {
				return getRuleContext(MapContext.self, 0)
			}
			open
			func dateTime() -> DateTimeContext? {
				return getRuleContext(DateTimeContext.self, 0)
			}
			open
			func duration() -> DurationContext? {
				return getRuleContext(DurationContext.self, 0)
			}
			open
			func quantity() -> QuantityContext? {
				return getRuleContext(QuantityContext.self, 0)
			}
			open
			func URL() -> TerminalNode? {
				return getToken(KDParser.Tokens.URL.rawValue, 0)
			}
			open
			func range() -> RangeContext? {
				return getRuleContext(RangeContext.self, 0)
			}
			open
			func Version() -> TerminalNode? {
				return getToken(KDParser.Tokens.Version.rawValue, 0)
			}
			open
			func blob() -> BlobContext? {
				return getRuleContext(BlobContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_value
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterValue(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitValue(self)
			}
		}
	}
	@discardableResult
	 open func value() throws -> ValueContext {
        let _localctx: ValueContext = ValueContext(_ctx, getState())
		try enterRule(_localctx, 4, KDParser.RULE_value)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(133)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,9, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(111)
		 		try stringLiteral()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(112)
		 		try match(KDParser.Tokens.CharLiteral.rawValue)

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(113)
		 		try match(KDParser.Tokens.ID.rawValue)

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(114)
		 		try match(KDParser.Tokens.IntegerLiteral.rawValue)

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(115)
		 		try match(KDParser.Tokens.HexLiteral.rawValue)

		 		break
		 	case 6:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(116)
		 		try match(KDParser.Tokens.BinLiteral.rawValue)

		 		break
		 	case 7:
		 		try enterOuterAlt(_localctx, 7)
		 		setState(117)
		 		try match(KDParser.Tokens.LongLiteral.rawValue)

		 		break
		 	case 8:
		 		try enterOuterAlt(_localctx, 8)
		 		setState(118)
		 		try match(KDParser.Tokens.FloatLiteral.rawValue)

		 		break
		 	case 9:
		 		try enterOuterAlt(_localctx, 9)
		 		setState(119)
		 		try match(KDParser.Tokens.DoubleLiteral.rawValue)

		 		break
		 	case 10:
		 		try enterOuterAlt(_localctx, 10)
		 		setState(120)
		 		try match(KDParser.Tokens.DecimalLiteral.rawValue)

		 		break
		 	case 11:
		 		try enterOuterAlt(_localctx, 11)
		 		setState(121)
		 		try match(KDParser.Tokens.TRUE.rawValue)

		 		break
		 	case 12:
		 		try enterOuterAlt(_localctx, 12)
		 		setState(122)
		 		try match(KDParser.Tokens.FALSE.rawValue)

		 		break
		 	case 13:
		 		try enterOuterAlt(_localctx, 13)
		 		setState(123)
		 		try match(KDParser.Tokens.NULL.rawValue)

		 		break
		 	case 14:
		 		try enterOuterAlt(_localctx, 14)
		 		setState(124)
		 		try list()

		 		break
		 	case 15:
		 		try enterOuterAlt(_localctx, 15)
		 		setState(125)
		 		try map()

		 		break
		 	case 16:
		 		try enterOuterAlt(_localctx, 16)
		 		setState(126)
		 		try dateTime()

		 		break
		 	case 17:
		 		try enterOuterAlt(_localctx, 17)
		 		setState(127)
		 		try duration()

		 		break
		 	case 18:
		 		try enterOuterAlt(_localctx, 18)
		 		setState(128)
		 		try quantity()

		 		break
		 	case 19:
		 		try enterOuterAlt(_localctx, 19)
		 		setState(129)
		 		try match(KDParser.Tokens.URL.rawValue)

		 		break
		 	case 20:
		 		try enterOuterAlt(_localctx, 20)
		 		setState(130)
		 		try range()

		 		break
		 	case 21:
		 		try enterOuterAlt(_localctx, 21)
		 		setState(131)
		 		try match(KDParser.Tokens.Version.rawValue)

		 		break
		 	case 22:
		 		try enterOuterAlt(_localctx, 22)
		 		setState(132)
		 		try blob()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class StringLiteralContext: ParserRuleContext {
			open
			func SimpleString() -> TerminalNode? {
				return getToken(KDParser.Tokens.SimpleString.rawValue, 0)
			}
			open
			func RawString() -> TerminalNode? {
				return getToken(KDParser.Tokens.RawString.rawValue, 0)
			}
			open
			func blockString() -> BlockStringContext? {
				return getRuleContext(BlockStringContext.self, 0)
			}
			open
			func blockRawString() -> BlockRawStringContext? {
				return getRuleContext(BlockRawStringContext.self, 0)
			}
			open
			func blockRawAltString() -> BlockRawAltStringContext? {
				return getRuleContext(BlockRawAltStringContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_stringLiteral
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterStringLiteral(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitStringLiteral(self)
			}
		}
	}
	@discardableResult
	 open func stringLiteral() throws -> StringLiteralContext {
        let _localctx: StringLiteralContext = StringLiteralContext(_ctx, getState())
		try enterRule(_localctx, 6, KDParser.RULE_stringLiteral)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(140)
		 	try _errHandler.sync(self)
		 	switch (KDParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .SimpleString:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(135)
		 		try match(KDParser.Tokens.SimpleString.rawValue)

		 		break

		 	case .RawString:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(136)
		 		try match(KDParser.Tokens.RawString.rawValue)

		 		break

		 	case .BlockStringStart:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(137)
		 		try blockString()

		 		break

		 	case .BlockRawStringStart:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(138)
		 		try blockRawString()

		 		break

		 	case .BlockRawAltStringStart:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(139)
		 		try blockRawAltString()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class BlockStringContext: ParserRuleContext {
			open
			func BlockStringStart() -> TerminalNode? {
				return getToken(KDParser.Tokens.BlockStringStart.rawValue, 0)
			}
			open
			func BlockStringEnd() -> TerminalNode? {
				return getToken(KDParser.Tokens.BlockStringEnd.rawValue, 0)
			}
			open
			func BlockStringChunk() -> [TerminalNode] {
				return getTokens(KDParser.Tokens.BlockStringChunk.rawValue)
			}
			open
			func BlockStringChunk(_ i:Int) -> TerminalNode? {
				return getToken(KDParser.Tokens.BlockStringChunk.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_blockString
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterBlockString(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitBlockString(self)
			}
		}
	}
	@discardableResult
	 open func blockString() throws -> BlockStringContext {
        let _localctx: BlockStringContext = BlockStringContext(_ctx, getState())
		try enterRule(_localctx, 8, KDParser.RULE_blockString)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(142)
		 	try match(KDParser.Tokens.BlockStringStart.rawValue)
		 	setState(146)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == KDParser.Tokens.BlockStringChunk.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(143)
		 		try match(KDParser.Tokens.BlockStringChunk.rawValue)


		 		setState(148)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(149)
		 	try match(KDParser.Tokens.BlockStringEnd.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class BlockRawStringContext: ParserRuleContext {
			open
			func BlockRawStringStart() -> TerminalNode? {
				return getToken(KDParser.Tokens.BlockRawStringStart.rawValue, 0)
			}
			open
			func BlockRawStringEnd() -> TerminalNode? {
				return getToken(KDParser.Tokens.BlockRawStringEnd.rawValue, 0)
			}
			open
			func BlockRawStringChunk() -> [TerminalNode] {
				return getTokens(KDParser.Tokens.BlockRawStringChunk.rawValue)
			}
			open
			func BlockRawStringChunk(_ i:Int) -> TerminalNode? {
				return getToken(KDParser.Tokens.BlockRawStringChunk.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_blockRawString
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterBlockRawString(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitBlockRawString(self)
			}
		}
	}
	@discardableResult
	 open func blockRawString() throws -> BlockRawStringContext {
        let _localctx: BlockRawStringContext = BlockRawStringContext(_ctx, getState())
		try enterRule(_localctx, 10, KDParser.RULE_blockRawString)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(151)
		 	try match(KDParser.Tokens.BlockRawStringStart.rawValue)
		 	setState(155)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == KDParser.Tokens.BlockRawStringChunk.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(152)
		 		try match(KDParser.Tokens.BlockRawStringChunk.rawValue)


		 		setState(157)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(158)
		 	try match(KDParser.Tokens.BlockRawStringEnd.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class BlockRawAltStringContext: ParserRuleContext {
			open
			func BlockRawAltStringStart() -> TerminalNode? {
				return getToken(KDParser.Tokens.BlockRawAltStringStart.rawValue, 0)
			}
			open
			func BlockRawAltStringEnd() -> TerminalNode? {
				return getToken(KDParser.Tokens.BlockRawAltStringEnd.rawValue, 0)
			}
			open
			func BlockRawAltStringChunk() -> [TerminalNode] {
				return getTokens(KDParser.Tokens.BlockRawAltStringChunk.rawValue)
			}
			open
			func BlockRawAltStringChunk(_ i:Int) -> TerminalNode? {
				return getToken(KDParser.Tokens.BlockRawAltStringChunk.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_blockRawAltString
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterBlockRawAltString(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitBlockRawAltString(self)
			}
		}
	}
	@discardableResult
	 open func blockRawAltString() throws -> BlockRawAltStringContext {
        let _localctx: BlockRawAltStringContext = BlockRawAltStringContext(_ctx, getState())
		try enterRule(_localctx, 12, KDParser.RULE_blockRawAltString)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(160)
		 	try match(KDParser.Tokens.BlockRawAltStringStart.rawValue)
		 	setState(164)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == KDParser.Tokens.BlockRawAltStringChunk.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(161)
		 		try match(KDParser.Tokens.BlockRawAltStringChunk.rawValue)


		 		setState(166)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(167)
		 	try match(KDParser.Tokens.BlockRawAltStringEnd.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class DurationContext: ParserRuleContext {
			open
			func CompoundDuration() -> TerminalNode? {
				return getToken(KDParser.Tokens.CompoundDuration.rawValue, 0)
			}
			open
			func DayDuration() -> TerminalNode? {
				return getToken(KDParser.Tokens.DayDuration.rawValue, 0)
			}
			open
			func HourDuration() -> TerminalNode? {
				return getToken(KDParser.Tokens.HourDuration.rawValue, 0)
			}
			open
			func MinuteDuration() -> TerminalNode? {
				return getToken(KDParser.Tokens.MinuteDuration.rawValue, 0)
			}
			open
			func SecondDuration() -> TerminalNode? {
				return getToken(KDParser.Tokens.SecondDuration.rawValue, 0)
			}
			open
			func MillisecondDuration() -> TerminalNode? {
				return getToken(KDParser.Tokens.MillisecondDuration.rawValue, 0)
			}
			open
			func NanosecondDuration() -> TerminalNode? {
				return getToken(KDParser.Tokens.NanosecondDuration.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_duration
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterDuration(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitDuration(self)
			}
		}
	}
	@discardableResult
	 open func duration() throws -> DurationContext {
        let _localctx: DurationContext = DurationContext(_ctx, getState())
		try enterRule(_localctx, 14, KDParser.RULE_duration)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(169)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, KDParser.Tokens.CompoundDuration.rawValue,KDParser.Tokens.DayDuration.rawValue,KDParser.Tokens.HourDuration.rawValue,KDParser.Tokens.MinuteDuration.rawValue,KDParser.Tokens.SecondDuration.rawValue,KDParser.Tokens.MillisecondDuration.rawValue,KDParser.Tokens.NanosecondDuration.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class QuantityContext: ParserRuleContext {
			open
			func IntegerQuantityLiteral() -> TerminalNode? {
				return getToken(KDParser.Tokens.IntegerQuantityLiteral.rawValue, 0)
			}
			open
			func DecimalQuantityLiteral() -> TerminalNode? {
				return getToken(KDParser.Tokens.DecimalQuantityLiteral.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_quantity
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterQuantity(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitQuantity(self)
			}
		}
	}
	@discardableResult
	 open func quantity() throws -> QuantityContext {
        let _localctx: QuantityContext = QuantityContext(_ctx, getState())
		try enterRule(_localctx, 16, KDParser.RULE_quantity)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(171)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == KDParser.Tokens.IntegerQuantityLiteral.rawValue || _la == KDParser.Tokens.DecimalQuantityLiteral.rawValue
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class RangeOpContext: ParserRuleContext {
			open
			func InclusiveRangeOp() -> TerminalNode? {
				return getToken(KDParser.Tokens.InclusiveRangeOp.rawValue, 0)
			}
			open
			func ExclusiveRangeOp() -> TerminalNode? {
				return getToken(KDParser.Tokens.ExclusiveRangeOp.rawValue, 0)
			}
			open
			func ExclusiveLeftOp() -> TerminalNode? {
				return getToken(KDParser.Tokens.ExclusiveLeftOp.rawValue, 0)
			}
			open
			func ExclusiveRightOp() -> TerminalNode? {
				return getToken(KDParser.Tokens.ExclusiveRightOp.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_rangeOp
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterRangeOp(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitRangeOp(self)
			}
		}
	}
	@discardableResult
	 open func rangeOp() throws -> RangeOpContext {
        let _localctx: RangeOpContext = RangeOpContext(_ctx, getState())
		try enterRule(_localctx, 18, KDParser.RULE_rangeOp)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(173)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, KDParser.Tokens.InclusiveRangeOp.rawValue,KDParser.Tokens.ExclusiveRangeOp.rawValue,KDParser.Tokens.ExclusiveLeftOp.rawValue,KDParser.Tokens.ExclusiveRightOp.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class IntRangeContext: ParserRuleContext {
			open
			func UNDERSCORE() -> TerminalNode? {
				return getToken(KDParser.Tokens.UNDERSCORE.rawValue, 0)
			}
			open
			func rangeOp() -> RangeOpContext? {
				return getRuleContext(RangeOpContext.self, 0)
			}
			open
			func IntegerLiteral() -> [TerminalNode] {
				return getTokens(KDParser.Tokens.IntegerLiteral.rawValue)
			}
			open
			func IntegerLiteral(_ i:Int) -> TerminalNode? {
				return getToken(KDParser.Tokens.IntegerLiteral.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_intRange
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterIntRange(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitIntRange(self)
			}
		}
	}
	@discardableResult
	 open func intRange() throws -> IntRangeContext {
        let _localctx: IntRangeContext = IntRangeContext(_ctx, getState())
		try enterRule(_localctx, 20, KDParser.RULE_intRange)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(187)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,14, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(175)
		 		try match(KDParser.Tokens.UNDERSCORE.rawValue)
		 		setState(176)
		 		try rangeOp()
		 		setState(177)
		 		try match(KDParser.Tokens.IntegerLiteral.rawValue)


		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(179)
		 		try match(KDParser.Tokens.IntegerLiteral.rawValue)
		 		setState(180)
		 		try rangeOp()
		 		setState(181)
		 		try match(KDParser.Tokens.UNDERSCORE.rawValue)


		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(183)
		 		try match(KDParser.Tokens.IntegerLiteral.rawValue)
		 		setState(184)
		 		try rangeOp()
		 		setState(185)
		 		try match(KDParser.Tokens.IntegerLiteral.rawValue)


		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class LongRangeContext: ParserRuleContext {
			open
			func UNDERSCORE() -> TerminalNode? {
				return getToken(KDParser.Tokens.UNDERSCORE.rawValue, 0)
			}
			open
			func rangeOp() -> RangeOpContext? {
				return getRuleContext(RangeOpContext.self, 0)
			}
			open
			func LongLiteral() -> [TerminalNode] {
				return getTokens(KDParser.Tokens.LongLiteral.rawValue)
			}
			open
			func LongLiteral(_ i:Int) -> TerminalNode? {
				return getToken(KDParser.Tokens.LongLiteral.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_longRange
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterLongRange(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitLongRange(self)
			}
		}
	}
	@discardableResult
	 open func longRange() throws -> LongRangeContext {
        let _localctx: LongRangeContext = LongRangeContext(_ctx, getState())
		try enterRule(_localctx, 22, KDParser.RULE_longRange)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(201)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,15, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(189)
		 		try match(KDParser.Tokens.UNDERSCORE.rawValue)
		 		setState(190)
		 		try rangeOp()
		 		setState(191)
		 		try match(KDParser.Tokens.LongLiteral.rawValue)


		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(193)
		 		try match(KDParser.Tokens.LongLiteral.rawValue)
		 		setState(194)
		 		try rangeOp()
		 		setState(195)
		 		try match(KDParser.Tokens.UNDERSCORE.rawValue)


		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(197)
		 		try match(KDParser.Tokens.LongLiteral.rawValue)
		 		setState(198)
		 		try rangeOp()
		 		setState(199)
		 		try match(KDParser.Tokens.LongLiteral.rawValue)


		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FloatRangeContext: ParserRuleContext {
			open
			func UNDERSCORE() -> TerminalNode? {
				return getToken(KDParser.Tokens.UNDERSCORE.rawValue, 0)
			}
			open
			func rangeOp() -> RangeOpContext? {
				return getRuleContext(RangeOpContext.self, 0)
			}
			open
			func FloatLiteral() -> [TerminalNode] {
				return getTokens(KDParser.Tokens.FloatLiteral.rawValue)
			}
			open
			func FloatLiteral(_ i:Int) -> TerminalNode? {
				return getToken(KDParser.Tokens.FloatLiteral.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_floatRange
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterFloatRange(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitFloatRange(self)
			}
		}
	}
	@discardableResult
	 open func floatRange() throws -> FloatRangeContext {
        let _localctx: FloatRangeContext = FloatRangeContext(_ctx, getState())
		try enterRule(_localctx, 24, KDParser.RULE_floatRange)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(215)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,16, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(203)
		 		try match(KDParser.Tokens.UNDERSCORE.rawValue)
		 		setState(204)
		 		try rangeOp()
		 		setState(205)
		 		try match(KDParser.Tokens.FloatLiteral.rawValue)


		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(207)
		 		try match(KDParser.Tokens.FloatLiteral.rawValue)
		 		setState(208)
		 		try rangeOp()
		 		setState(209)
		 		try match(KDParser.Tokens.UNDERSCORE.rawValue)


		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(211)
		 		try match(KDParser.Tokens.FloatLiteral.rawValue)
		 		setState(212)
		 		try rangeOp()
		 		setState(213)
		 		try match(KDParser.Tokens.FloatLiteral.rawValue)


		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class DoubleRangeContext: ParserRuleContext {
			open
			func UNDERSCORE() -> TerminalNode? {
				return getToken(KDParser.Tokens.UNDERSCORE.rawValue, 0)
			}
			open
			func rangeOp() -> RangeOpContext? {
				return getRuleContext(RangeOpContext.self, 0)
			}
			open
			func DoubleLiteral() -> [TerminalNode] {
				return getTokens(KDParser.Tokens.DoubleLiteral.rawValue)
			}
			open
			func DoubleLiteral(_ i:Int) -> TerminalNode? {
				return getToken(KDParser.Tokens.DoubleLiteral.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_doubleRange
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterDoubleRange(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitDoubleRange(self)
			}
		}
	}
	@discardableResult
	 open func doubleRange() throws -> DoubleRangeContext {
        let _localctx: DoubleRangeContext = DoubleRangeContext(_ctx, getState())
		try enterRule(_localctx, 26, KDParser.RULE_doubleRange)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(229)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,17, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(217)
		 		try match(KDParser.Tokens.UNDERSCORE.rawValue)
		 		setState(218)
		 		try rangeOp()
		 		setState(219)
		 		try match(KDParser.Tokens.DoubleLiteral.rawValue)


		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(221)
		 		try match(KDParser.Tokens.DoubleLiteral.rawValue)
		 		setState(222)
		 		try rangeOp()
		 		setState(223)
		 		try match(KDParser.Tokens.UNDERSCORE.rawValue)


		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(225)
		 		try match(KDParser.Tokens.DoubleLiteral.rawValue)
		 		setState(226)
		 		try rangeOp()
		 		setState(227)
		 		try match(KDParser.Tokens.DoubleLiteral.rawValue)


		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class DecimalRangeContext: ParserRuleContext {
			open
			func UNDERSCORE() -> TerminalNode? {
				return getToken(KDParser.Tokens.UNDERSCORE.rawValue, 0)
			}
			open
			func rangeOp() -> RangeOpContext? {
				return getRuleContext(RangeOpContext.self, 0)
			}
			open
			func DecimalLiteral() -> [TerminalNode] {
				return getTokens(KDParser.Tokens.DecimalLiteral.rawValue)
			}
			open
			func DecimalLiteral(_ i:Int) -> TerminalNode? {
				return getToken(KDParser.Tokens.DecimalLiteral.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_decimalRange
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterDecimalRange(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitDecimalRange(self)
			}
		}
	}
	@discardableResult
	 open func decimalRange() throws -> DecimalRangeContext {
        let _localctx: DecimalRangeContext = DecimalRangeContext(_ctx, getState())
		try enterRule(_localctx, 28, KDParser.RULE_decimalRange)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(243)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,18, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(231)
		 		try match(KDParser.Tokens.UNDERSCORE.rawValue)
		 		setState(232)
		 		try rangeOp()
		 		setState(233)
		 		try match(KDParser.Tokens.DecimalLiteral.rawValue)


		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(235)
		 		try match(KDParser.Tokens.DecimalLiteral.rawValue)
		 		setState(236)
		 		try rangeOp()
		 		setState(237)
		 		try match(KDParser.Tokens.UNDERSCORE.rawValue)


		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(239)
		 		try match(KDParser.Tokens.DecimalLiteral.rawValue)
		 		setState(240)
		 		try rangeOp()
		 		setState(241)
		 		try match(KDParser.Tokens.DecimalLiteral.rawValue)


		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class DurationRangeContext: ParserRuleContext {
			open
			func UNDERSCORE() -> TerminalNode? {
				return getToken(KDParser.Tokens.UNDERSCORE.rawValue, 0)
			}
			open
			func rangeOp() -> RangeOpContext? {
				return getRuleContext(RangeOpContext.self, 0)
			}
			open
			func duration() -> [DurationContext] {
				return getRuleContexts(DurationContext.self)
			}
			open
			func duration(_ i: Int) -> DurationContext? {
				return getRuleContext(DurationContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_durationRange
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterDurationRange(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitDurationRange(self)
			}
		}
	}
	@discardableResult
	 open func durationRange() throws -> DurationRangeContext {
        let _localctx: DurationRangeContext = DurationRangeContext(_ctx, getState())
		try enterRule(_localctx, 30, KDParser.RULE_durationRange)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(257)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,19, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(245)
		 		try match(KDParser.Tokens.UNDERSCORE.rawValue)
		 		setState(246)
		 		try rangeOp()
		 		setState(247)
		 		try duration()


		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(249)
		 		try duration()
		 		setState(250)
		 		try rangeOp()
		 		setState(251)
		 		try match(KDParser.Tokens.UNDERSCORE.rawValue)


		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(253)
		 		try duration()
		 		setState(254)
		 		try rangeOp()
		 		setState(255)
		 		try duration()


		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class DateTimeRangeContext: ParserRuleContext {
			open
			func UNDERSCORE() -> TerminalNode? {
				return getToken(KDParser.Tokens.UNDERSCORE.rawValue, 0)
			}
			open
			func rangeOp() -> RangeOpContext? {
				return getRuleContext(RangeOpContext.self, 0)
			}
			open
			func dateTime() -> [DateTimeContext] {
				return getRuleContexts(DateTimeContext.self)
			}
			open
			func dateTime(_ i: Int) -> DateTimeContext? {
				return getRuleContext(DateTimeContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_dateTimeRange
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterDateTimeRange(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitDateTimeRange(self)
			}
		}
	}
	@discardableResult
	 open func dateTimeRange() throws -> DateTimeRangeContext {
        let _localctx: DateTimeRangeContext = DateTimeRangeContext(_ctx, getState())
		try enterRule(_localctx, 32, KDParser.RULE_dateTimeRange)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(271)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,20, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(259)
		 		try match(KDParser.Tokens.UNDERSCORE.rawValue)
		 		setState(260)
		 		try rangeOp()
		 		setState(261)
		 		try dateTime()


		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(263)
		 		try dateTime()
		 		setState(264)
		 		try rangeOp()
		 		setState(265)
		 		try match(KDParser.Tokens.UNDERSCORE.rawValue)


		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(267)
		 		try dateTime()
		 		setState(268)
		 		try rangeOp()
		 		setState(269)
		 		try dateTime()


		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class VersionRangeContext: ParserRuleContext {
			open
			func UNDERSCORE() -> TerminalNode? {
				return getToken(KDParser.Tokens.UNDERSCORE.rawValue, 0)
			}
			open
			func rangeOp() -> RangeOpContext? {
				return getRuleContext(RangeOpContext.self, 0)
			}
			open
			func Version() -> [TerminalNode] {
				return getTokens(KDParser.Tokens.Version.rawValue)
			}
			open
			func Version(_ i:Int) -> TerminalNode? {
				return getToken(KDParser.Tokens.Version.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_versionRange
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterVersionRange(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitVersionRange(self)
			}
		}
	}
	@discardableResult
	 open func versionRange() throws -> VersionRangeContext {
        let _localctx: VersionRangeContext = VersionRangeContext(_ctx, getState())
		try enterRule(_localctx, 34, KDParser.RULE_versionRange)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(285)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,21, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(273)
		 		try match(KDParser.Tokens.UNDERSCORE.rawValue)
		 		setState(274)
		 		try rangeOp()
		 		setState(275)
		 		try match(KDParser.Tokens.Version.rawValue)


		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(277)
		 		try match(KDParser.Tokens.Version.rawValue)
		 		setState(278)
		 		try rangeOp()
		 		setState(279)
		 		try match(KDParser.Tokens.UNDERSCORE.rawValue)


		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(281)
		 		try match(KDParser.Tokens.Version.rawValue)
		 		setState(282)
		 		try rangeOp()
		 		setState(283)
		 		try match(KDParser.Tokens.Version.rawValue)


		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class CharRangeContext: ParserRuleContext {
			open
			func UNDERSCORE() -> TerminalNode? {
				return getToken(KDParser.Tokens.UNDERSCORE.rawValue, 0)
			}
			open
			func rangeOp() -> RangeOpContext? {
				return getRuleContext(RangeOpContext.self, 0)
			}
			open
			func CharLiteral() -> [TerminalNode] {
				return getTokens(KDParser.Tokens.CharLiteral.rawValue)
			}
			open
			func CharLiteral(_ i:Int) -> TerminalNode? {
				return getToken(KDParser.Tokens.CharLiteral.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_charRange
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterCharRange(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitCharRange(self)
			}
		}
	}
	@discardableResult
	 open func charRange() throws -> CharRangeContext {
        let _localctx: CharRangeContext = CharRangeContext(_ctx, getState())
		try enterRule(_localctx, 36, KDParser.RULE_charRange)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(299)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,22, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(287)
		 		try match(KDParser.Tokens.UNDERSCORE.rawValue)
		 		setState(288)
		 		try rangeOp()
		 		setState(289)
		 		try match(KDParser.Tokens.CharLiteral.rawValue)


		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(291)
		 		try match(KDParser.Tokens.CharLiteral.rawValue)
		 		setState(292)
		 		try rangeOp()
		 		setState(293)
		 		try match(KDParser.Tokens.UNDERSCORE.rawValue)


		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(295)
		 		try match(KDParser.Tokens.CharLiteral.rawValue)
		 		setState(296)
		 		try rangeOp()
		 		setState(297)
		 		try match(KDParser.Tokens.CharLiteral.rawValue)


		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class StringRangeContext: ParserRuleContext {
			open
			func UNDERSCORE() -> TerminalNode? {
				return getToken(KDParser.Tokens.UNDERSCORE.rawValue, 0)
			}
			open
			func rangeOp() -> RangeOpContext? {
				return getRuleContext(RangeOpContext.self, 0)
			}
			open
			func stringLiteral() -> [StringLiteralContext] {
				return getRuleContexts(StringLiteralContext.self)
			}
			open
			func stringLiteral(_ i: Int) -> StringLiteralContext? {
				return getRuleContext(StringLiteralContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_stringRange
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterStringRange(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitStringRange(self)
			}
		}
	}
	@discardableResult
	 open func stringRange() throws -> StringRangeContext {
        let _localctx: StringRangeContext = StringRangeContext(_ctx, getState())
		try enterRule(_localctx, 38, KDParser.RULE_stringRange)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(313)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,23, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(301)
		 		try match(KDParser.Tokens.UNDERSCORE.rawValue)
		 		setState(302)
		 		try rangeOp()
		 		setState(303)
		 		try stringLiteral()


		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(305)
		 		try stringLiteral()
		 		setState(306)
		 		try rangeOp()
		 		setState(307)
		 		try match(KDParser.Tokens.UNDERSCORE.rawValue)


		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(309)
		 		try stringLiteral()
		 		setState(310)
		 		try rangeOp()
		 		setState(311)
		 		try stringLiteral()


		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class QuantityRangeContext: ParserRuleContext {
			open
			func UNDERSCORE() -> TerminalNode? {
				return getToken(KDParser.Tokens.UNDERSCORE.rawValue, 0)
			}
			open
			func rangeOp() -> RangeOpContext? {
				return getRuleContext(RangeOpContext.self, 0)
			}
			open
			func quantity() -> [QuantityContext] {
				return getRuleContexts(QuantityContext.self)
			}
			open
			func quantity(_ i: Int) -> QuantityContext? {
				return getRuleContext(QuantityContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_quantityRange
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterQuantityRange(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitQuantityRange(self)
			}
		}
	}
	@discardableResult
	 open func quantityRange() throws -> QuantityRangeContext {
        let _localctx: QuantityRangeContext = QuantityRangeContext(_ctx, getState())
		try enterRule(_localctx, 40, KDParser.RULE_quantityRange)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(327)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,24, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(315)
		 		try match(KDParser.Tokens.UNDERSCORE.rawValue)
		 		setState(316)
		 		try rangeOp()
		 		setState(317)
		 		try quantity()


		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(319)
		 		try quantity()
		 		setState(320)
		 		try rangeOp()
		 		setState(321)
		 		try match(KDParser.Tokens.UNDERSCORE.rawValue)


		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(323)
		 		try quantity()
		 		setState(324)
		 		try rangeOp()
		 		setState(325)
		 		try quantity()


		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class RangeContext: ParserRuleContext {
			open
			func intRange() -> IntRangeContext? {
				return getRuleContext(IntRangeContext.self, 0)
			}
			open
			func longRange() -> LongRangeContext? {
				return getRuleContext(LongRangeContext.self, 0)
			}
			open
			func floatRange() -> FloatRangeContext? {
				return getRuleContext(FloatRangeContext.self, 0)
			}
			open
			func doubleRange() -> DoubleRangeContext? {
				return getRuleContext(DoubleRangeContext.self, 0)
			}
			open
			func decimalRange() -> DecimalRangeContext? {
				return getRuleContext(DecimalRangeContext.self, 0)
			}
			open
			func durationRange() -> DurationRangeContext? {
				return getRuleContext(DurationRangeContext.self, 0)
			}
			open
			func dateTimeRange() -> DateTimeRangeContext? {
				return getRuleContext(DateTimeRangeContext.self, 0)
			}
			open
			func versionRange() -> VersionRangeContext? {
				return getRuleContext(VersionRangeContext.self, 0)
			}
			open
			func charRange() -> CharRangeContext? {
				return getRuleContext(CharRangeContext.self, 0)
			}
			open
			func stringRange() -> StringRangeContext? {
				return getRuleContext(StringRangeContext.self, 0)
			}
			open
			func quantityRange() -> QuantityRangeContext? {
				return getRuleContext(QuantityRangeContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_range
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterRange(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitRange(self)
			}
		}
	}
	@discardableResult
	 open func range() throws -> RangeContext {
        let _localctx: RangeContext = RangeContext(_ctx, getState())
		try enterRule(_localctx, 42, KDParser.RULE_range)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(340)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,25, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(329)
		 		try intRange()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(330)
		 		try longRange()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(331)
		 		try floatRange()

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(332)
		 		try doubleRange()

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(333)
		 		try decimalRange()

		 		break
		 	case 6:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(334)
		 		try durationRange()

		 		break
		 	case 7:
		 		try enterOuterAlt(_localctx, 7)
		 		setState(335)
		 		try dateTimeRange()

		 		break
		 	case 8:
		 		try enterOuterAlt(_localctx, 8)
		 		setState(336)
		 		try versionRange()

		 		break
		 	case 9:
		 		try enterOuterAlt(_localctx, 9)
		 		setState(337)
		 		try charRange()

		 		break
		 	case 10:
		 		try enterOuterAlt(_localctx, 10)
		 		setState(338)
		 		try stringRange()

		 		break
		 	case 11:
		 		try enterOuterAlt(_localctx, 11)
		 		setState(339)
		 		try quantityRange()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class BlobContext: ParserRuleContext {
			open
			func BLOB_START() -> TerminalNode? {
				return getToken(KDParser.Tokens.BLOB_START.rawValue, 0)
			}
			open
			func BLOB_END() -> TerminalNode? {
				return getToken(KDParser.Tokens.BLOB_END.rawValue, 0)
			}
			open
			func BLOB_DATA() -> [TerminalNode] {
				return getTokens(KDParser.Tokens.BLOB_DATA.rawValue)
			}
			open
			func BLOB_DATA(_ i:Int) -> TerminalNode? {
				return getToken(KDParser.Tokens.BLOB_DATA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_blob
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterBlob(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitBlob(self)
			}
		}
	}
	@discardableResult
	 open func blob() throws -> BlobContext {
        let _localctx: BlobContext = BlobContext(_ctx, getState())
		try enterRule(_localctx, 44, KDParser.RULE_blob)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(342)
		 	try match(KDParser.Tokens.BLOB_START.rawValue)
		 	setState(344) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(343)
		 		try match(KDParser.Tokens.BLOB_DATA.rawValue)


		 		setState(346); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == KDParser.Tokens.BLOB_DATA.rawValue
		 	      return testSet
		 	 }())
		 	setState(348)
		 	try match(KDParser.Tokens.BLOB_END.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ValueListContext: ParserRuleContext {
			open
			func value() -> [ValueContext] {
				return getRuleContexts(ValueContext.self)
			}
			open
			func value(_ i: Int) -> ValueContext? {
				return getRuleContext(ValueContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_valueList
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterValueList(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitValueList(self)
			}
		}
	}
	@discardableResult
	 open func valueList() throws -> ValueListContext {
        let _localctx: ValueListContext = ValueListContext(_ctx, getState())
		try enterRule(_localctx, 46, KDParser.RULE_valueList)
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(351); 
		 	try _errHandler.sync(self)
		 	_alt = 1;
		 	repeat {
		 		switch (_alt) {
		 		case 1:
		 			setState(350)
		 			try value()


		 			break
		 		default:
		 			throw ANTLRException.recognition(e: NoViableAltException(self))
		 		}
		 		setState(353); 
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,27,_ctx)
		 	} while (_alt != 2 && _alt !=  ATN.INVALID_ALT_NUMBER)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class AttributeContext: ParserRuleContext {
			open
			func nsName() -> NsNameContext? {
				return getRuleContext(NsNameContext.self, 0)
			}
			open
			func EQUALS() -> TerminalNode? {
				return getToken(KDParser.Tokens.EQUALS.rawValue, 0)
			}
			open
			func value() -> ValueContext? {
				return getRuleContext(ValueContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_attribute
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterAttribute(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitAttribute(self)
			}
		}
	}
	@discardableResult
	 open func attribute() throws -> AttributeContext {
        let _localctx: AttributeContext = AttributeContext(_ctx, getState())
		try enterRule(_localctx, 48, KDParser.RULE_attribute)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(355)
		 	try nsName()
		 	setState(356)
		 	try match(KDParser.Tokens.EQUALS.rawValue)
		 	setState(357)
		 	try value()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class AttributeListContext: ParserRuleContext {
			open
			func attribute() -> [AttributeContext] {
				return getRuleContexts(AttributeContext.self)
			}
			open
			func attribute(_ i: Int) -> AttributeContext? {
				return getRuleContext(AttributeContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_attributeList
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterAttributeList(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitAttributeList(self)
			}
		}
	}
	@discardableResult
	 open func attributeList() throws -> AttributeListContext {
        let _localctx: AttributeListContext = AttributeListContext(_ctx, getState())
		try enterRule(_localctx, 50, KDParser.RULE_attributeList)
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(360); 
		 	try _errHandler.sync(self)
		 	_alt = 1;
		 	repeat {
		 		switch (_alt) {
		 		case 1:
		 			setState(359)
		 			try attribute()


		 			break
		 		default:
		 			throw ANTLRException.recognition(e: NoViableAltException(self))
		 		}
		 		setState(362); 
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,28,_ctx)
		 	} while (_alt != 2 && _alt !=  ATN.INVALID_ALT_NUMBER)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class NsNameContext: ParserRuleContext {
			open
			func ID() -> [TerminalNode] {
				return getTokens(KDParser.Tokens.ID.rawValue)
			}
			open
			func ID(_ i:Int) -> TerminalNode? {
				return getToken(KDParser.Tokens.ID.rawValue, i)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(KDParser.Tokens.COLON.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_nsName
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterNsName(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitNsName(self)
			}
		}
	}
	@discardableResult
	 open func nsName() throws -> NsNameContext {
        let _localctx: NsNameContext = NsNameContext(_ctx, getState())
		try enterRule(_localctx, 52, KDParser.RULE_nsName)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(366)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,29,_ctx)) {
		 	case 1:
		 		setState(364)
		 		try match(KDParser.Tokens.ID.rawValue)
		 		setState(365)
		 		try match(KDParser.Tokens.COLON.rawValue)

		 		break
		 	default: break
		 	}
		 	setState(368)
		 	try match(KDParser.Tokens.ID.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ListContext: ParserRuleContext {
			open
			func LSQUARE() -> TerminalNode? {
				return getToken(KDParser.Tokens.LSQUARE.rawValue, 0)
			}
			open
			func value() -> [ValueContext] {
				return getRuleContexts(ValueContext.self)
			}
			open
			func value(_ i: Int) -> ValueContext? {
				return getRuleContext(ValueContext.self, i)
			}
			open
			func RSQUARE() -> TerminalNode? {
				return getToken(KDParser.Tokens.RSQUARE.rawValue, 0)
			}
			open
			func NL() -> [TerminalNode] {
				return getTokens(KDParser.Tokens.NL.rawValue)
			}
			open
			func NL(_ i:Int) -> TerminalNode? {
				return getToken(KDParser.Tokens.NL.rawValue, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(KDParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(KDParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_list
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterList(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitList(self)
			}
		}
	}
	@discardableResult
	 open func list() throws -> ListContext {
        let _localctx: ListContext = ListContext(_ctx, getState())
		try enterRule(_localctx, 54, KDParser.RULE_list)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	setState(403)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,35, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(370)
		 		try match(KDParser.Tokens.LSQUARE.rawValue)
		 		setState(374)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == KDParser.Tokens.NL.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(371)
		 			try match(KDParser.Tokens.NL.rawValue)


		 			setState(376)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(377)
		 		try value()
		 		setState(390)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,33,_ctx)
		 		while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 			if ( _alt==1 ) {
		 				setState(379)
		 				try _errHandler.sync(self)
		 				_la = try _input.LA(1)
		 				if (//closure
		 				 { () -> Bool in
		 				      let testSet: Bool = _la == KDParser.Tokens.COMMA.rawValue
		 				      return testSet
		 				 }()) {
		 					setState(378)
		 					try match(KDParser.Tokens.COMMA.rawValue)

		 				}

		 				setState(384)
		 				try _errHandler.sync(self)
		 				_la = try _input.LA(1)
		 				while (//closure
		 				 { () -> Bool in
		 				      let testSet: Bool = _la == KDParser.Tokens.NL.rawValue
		 				      return testSet
		 				 }()) {
		 					setState(381)
		 					try match(KDParser.Tokens.NL.rawValue)


		 					setState(386)
		 					try _errHandler.sync(self)
		 					_la = try _input.LA(1)
		 				}
		 				setState(387)
		 				try value()

		 		 
		 			}
		 			setState(392)
		 			try _errHandler.sync(self)
		 			_alt = try getInterpreter().adaptivePredict(_input,33,_ctx)
		 		}
		 		setState(396)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == KDParser.Tokens.NL.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(393)
		 			try match(KDParser.Tokens.NL.rawValue)


		 			setState(398)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(399)
		 		try match(KDParser.Tokens.RSQUARE.rawValue)


		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(401)
		 		try match(KDParser.Tokens.LSQUARE.rawValue)
		 		setState(402)
		 		try match(KDParser.Tokens.RSQUARE.rawValue)


		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class PairContext: ParserRuleContext {
			open
			func value() -> [ValueContext] {
				return getRuleContexts(ValueContext.self)
			}
			open
			func value(_ i: Int) -> ValueContext? {
				return getRuleContext(ValueContext.self, i)
			}
			open
			func EQUALS() -> TerminalNode? {
				return getToken(KDParser.Tokens.EQUALS.rawValue, 0)
			}
			open
			func NL() -> [TerminalNode] {
				return getTokens(KDParser.Tokens.NL.rawValue)
			}
			open
			func NL(_ i:Int) -> TerminalNode? {
				return getToken(KDParser.Tokens.NL.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_pair
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterPair(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitPair(self)
			}
		}
	}
	@discardableResult
	 open func pair() throws -> PairContext {
        let _localctx: PairContext = PairContext(_ctx, getState())
		try enterRule(_localctx, 56, KDParser.RULE_pair)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(408)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == KDParser.Tokens.NL.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(405)
		 		try match(KDParser.Tokens.NL.rawValue)


		 		setState(410)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(411)
		 	try value()
		 	setState(412)
		 	try match(KDParser.Tokens.EQUALS.rawValue)
		 	setState(416)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == KDParser.Tokens.NL.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(413)
		 		try match(KDParser.Tokens.NL.rawValue)


		 		setState(418)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(419)
		 	try value()
		 	setState(423)
		 	try _errHandler.sync(self)
		 	_alt = try getInterpreter().adaptivePredict(_input,38,_ctx)
		 	while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 		if ( _alt==1 ) {
		 			setState(420)
		 			try match(KDParser.Tokens.NL.rawValue)

		 	 
		 		}
		 		setState(425)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,38,_ctx)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class MapContext: ParserRuleContext {
			open
			func LSQUARE() -> TerminalNode? {
				return getToken(KDParser.Tokens.LSQUARE.rawValue, 0)
			}
			open
			func pair() -> [PairContext] {
				return getRuleContexts(PairContext.self)
			}
			open
			func pair(_ i: Int) -> PairContext? {
				return getRuleContext(PairContext.self, i)
			}
			open
			func RSQUARE() -> TerminalNode? {
				return getToken(KDParser.Tokens.RSQUARE.rawValue, 0)
			}
			open
			func NL() -> [TerminalNode] {
				return getTokens(KDParser.Tokens.NL.rawValue)
			}
			open
			func NL(_ i:Int) -> TerminalNode? {
				return getToken(KDParser.Tokens.NL.rawValue, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(KDParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(KDParser.Tokens.COMMA.rawValue, i)
			}
			open
			func EQUALS() -> TerminalNode? {
				return getToken(KDParser.Tokens.EQUALS.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_map
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterMap(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitMap(self)
			}
		}
	}
	@discardableResult
	 open func map() throws -> MapContext {
        let _localctx: MapContext = MapContext(_ctx, getState())
		try enterRule(_localctx, 58, KDParser.RULE_map)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	setState(460)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,44, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(426)
		 		try match(KDParser.Tokens.LSQUARE.rawValue)
		 		setState(430)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,39,_ctx)
		 		while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 			if ( _alt==1 ) {
		 				setState(427)
		 				try match(KDParser.Tokens.NL.rawValue)

		 		 
		 			}
		 			setState(432)
		 			try _errHandler.sync(self)
		 			_alt = try getInterpreter().adaptivePredict(_input,39,_ctx)
		 		}
		 		setState(433)
		 		try pair()
		 		setState(446)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,42,_ctx)
		 		while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 			if ( _alt==1 ) {
		 				setState(435)
		 				try _errHandler.sync(self)
		 				_la = try _input.LA(1)
		 				if (//closure
		 				 { () -> Bool in
		 				      let testSet: Bool = _la == KDParser.Tokens.COMMA.rawValue
		 				      return testSet
		 				 }()) {
		 					setState(434)
		 					try match(KDParser.Tokens.COMMA.rawValue)

		 				}

		 				setState(440)
		 				try _errHandler.sync(self)
		 				_alt = try getInterpreter().adaptivePredict(_input,41,_ctx)
		 				while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 					if ( _alt==1 ) {
		 						setState(437)
		 						try match(KDParser.Tokens.NL.rawValue)

		 				 
		 					}
		 					setState(442)
		 					try _errHandler.sync(self)
		 					_alt = try getInterpreter().adaptivePredict(_input,41,_ctx)
		 				}
		 				setState(443)
		 				try pair()

		 		 
		 			}
		 			setState(448)
		 			try _errHandler.sync(self)
		 			_alt = try getInterpreter().adaptivePredict(_input,42,_ctx)
		 		}
		 		setState(452)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == KDParser.Tokens.NL.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(449)
		 			try match(KDParser.Tokens.NL.rawValue)


		 			setState(454)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(455)
		 		try match(KDParser.Tokens.RSQUARE.rawValue)


		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(457)
		 		try match(KDParser.Tokens.LSQUARE.rawValue)
		 		setState(458)
		 		try match(KDParser.Tokens.EQUALS.rawValue)
		 		setState(459)
		 		try match(KDParser.Tokens.RSQUARE.rawValue)


		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class AnnotationContext: ParserRuleContext {
			open
			func AT() -> TerminalNode? {
				return getToken(KDParser.Tokens.AT.rawValue, 0)
			}
			open
			func nsName() -> NsNameContext? {
				return getRuleContext(NsNameContext.self, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(KDParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(KDParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func valueList() -> ValueListContext? {
				return getRuleContext(ValueListContext.self, 0)
			}
			open
			func attributeList() -> AttributeListContext? {
				return getRuleContext(AttributeListContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_annotation
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterAnnotation(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitAnnotation(self)
			}
		}
	}
	@discardableResult
	 open func annotation() throws -> AnnotationContext {
        let _localctx: AnnotationContext = AnnotationContext(_ctx, getState())
		try enterRule(_localctx, 60, KDParser.RULE_annotation)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(462)
		 	try match(KDParser.Tokens.AT.rawValue)
		 	setState(463)
		 	try nsName()
		 	setState(472)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == KDParser.Tokens.LPAREN.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(464)
		 		try match(KDParser.Tokens.LPAREN.rawValue)
		 		setState(466)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,45,_ctx)) {
		 		case 1:
		 			setState(465)
		 			try valueList()

		 			break
		 		default: break
		 		}
		 		setState(469)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == KDParser.Tokens.ID.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(468)
		 			try attributeList()

		 		}

		 		setState(471)
		 		try match(KDParser.Tokens.RPAREN.rawValue)

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class AnnotationListContext: ParserRuleContext {
			open
			func annotation() -> [AnnotationContext] {
				return getRuleContexts(AnnotationContext.self)
			}
			open
			func annotation(_ i: Int) -> AnnotationContext? {
				return getRuleContext(AnnotationContext.self, i)
			}
			open
			func NL() -> [TerminalNode] {
				return getTokens(KDParser.Tokens.NL.rawValue)
			}
			open
			func NL(_ i:Int) -> TerminalNode? {
				return getToken(KDParser.Tokens.NL.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_annotationList
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterAnnotationList(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitAnnotationList(self)
			}
		}
	}
	@discardableResult
	 open func annotationList() throws -> AnnotationListContext {
        let _localctx: AnnotationListContext = AnnotationListContext(_ctx, getState())
		try enterRule(_localctx, 62, KDParser.RULE_annotationList)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(474)
		 	try annotation()
		 	setState(484)
		 	try _errHandler.sync(self)
		 	_alt = try getInterpreter().adaptivePredict(_input,49,_ctx)
		 	while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 		if ( _alt==1 ) {
		 			setState(478)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 			while (//closure
		 			 { () -> Bool in
		 			      let testSet: Bool = _la == KDParser.Tokens.NL.rawValue
		 			      return testSet
		 			 }()) {
		 				setState(475)
		 				try match(KDParser.Tokens.NL.rawValue)


		 				setState(480)
		 				try _errHandler.sync(self)
		 				_la = try _input.LA(1)
		 			}
		 			setState(481)
		 			try annotation()

		 	 
		 		}
		 		setState(486)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,49,_ctx)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class DateTimeContext: ParserRuleContext {
			open
			func Date() -> TerminalNode? {
				return getToken(KDParser.Tokens.Date.rawValue, 0)
			}
			open
			func Time() -> TerminalNode? {
				return getToken(KDParser.Tokens.Time.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return KDParser.RULE_dateTime
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.enterDateTime(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? KDParserListener {
				listener.exitDateTime(self)
			}
		}
	}
	@discardableResult
	 open func dateTime() throws -> DateTimeContext {
        let _localctx: DateTimeContext = DateTimeContext(_ctx, getState())
		try enterRule(_localctx, 64, KDParser.RULE_dateTime)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(487)
		 	try match(KDParser.Tokens.Date.rawValue)
		 	setState(489)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == KDParser.Tokens.Time.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(488)
		 		try match(KDParser.Tokens.Time.rawValue)

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}


	public
	static let _serializedATN = KDParserATN().jsonString

	public
	static let _ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}
