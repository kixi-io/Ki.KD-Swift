// Generated from KDParser.g4 by ANTLR 4.8
import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link KDParser}.
 */
public protocol KDParserListener: ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link KDParser#tagList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTagList(_ ctx: KDParser.TagListContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#tagList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTagList(_ ctx: KDParser.TagListContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#tag}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTag(_ ctx: KDParser.TagContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#tag}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTag(_ ctx: KDParser.TagContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#value}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterValue(_ ctx: KDParser.ValueContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#value}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitValue(_ ctx: KDParser.ValueContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#stringLiteral}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStringLiteral(_ ctx: KDParser.StringLiteralContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#stringLiteral}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStringLiteral(_ ctx: KDParser.StringLiteralContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#blockString}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBlockString(_ ctx: KDParser.BlockStringContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#blockString}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBlockString(_ ctx: KDParser.BlockStringContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#blockRawString}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBlockRawString(_ ctx: KDParser.BlockRawStringContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#blockRawString}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBlockRawString(_ ctx: KDParser.BlockRawStringContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#blockRawAltString}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBlockRawAltString(_ ctx: KDParser.BlockRawAltStringContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#blockRawAltString}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBlockRawAltString(_ ctx: KDParser.BlockRawAltStringContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#duration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDuration(_ ctx: KDParser.DurationContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#duration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDuration(_ ctx: KDParser.DurationContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#quantity}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterQuantity(_ ctx: KDParser.QuantityContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#quantity}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitQuantity(_ ctx: KDParser.QuantityContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#rangeOp}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRangeOp(_ ctx: KDParser.RangeOpContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#rangeOp}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRangeOp(_ ctx: KDParser.RangeOpContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#intRange}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIntRange(_ ctx: KDParser.IntRangeContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#intRange}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIntRange(_ ctx: KDParser.IntRangeContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#longRange}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLongRange(_ ctx: KDParser.LongRangeContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#longRange}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLongRange(_ ctx: KDParser.LongRangeContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#floatRange}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFloatRange(_ ctx: KDParser.FloatRangeContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#floatRange}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFloatRange(_ ctx: KDParser.FloatRangeContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#doubleRange}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDoubleRange(_ ctx: KDParser.DoubleRangeContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#doubleRange}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDoubleRange(_ ctx: KDParser.DoubleRangeContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#decimalRange}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDecimalRange(_ ctx: KDParser.DecimalRangeContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#decimalRange}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDecimalRange(_ ctx: KDParser.DecimalRangeContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#durationRange}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDurationRange(_ ctx: KDParser.DurationRangeContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#durationRange}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDurationRange(_ ctx: KDParser.DurationRangeContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#dateTimeRange}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDateTimeRange(_ ctx: KDParser.DateTimeRangeContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#dateTimeRange}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDateTimeRange(_ ctx: KDParser.DateTimeRangeContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#versionRange}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterVersionRange(_ ctx: KDParser.VersionRangeContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#versionRange}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitVersionRange(_ ctx: KDParser.VersionRangeContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#charRange}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCharRange(_ ctx: KDParser.CharRangeContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#charRange}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCharRange(_ ctx: KDParser.CharRangeContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#stringRange}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStringRange(_ ctx: KDParser.StringRangeContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#stringRange}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStringRange(_ ctx: KDParser.StringRangeContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#quantityRange}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterQuantityRange(_ ctx: KDParser.QuantityRangeContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#quantityRange}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitQuantityRange(_ ctx: KDParser.QuantityRangeContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#range}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRange(_ ctx: KDParser.RangeContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#range}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRange(_ ctx: KDParser.RangeContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#blob}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBlob(_ ctx: KDParser.BlobContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#blob}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBlob(_ ctx: KDParser.BlobContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#valueList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterValueList(_ ctx: KDParser.ValueListContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#valueList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitValueList(_ ctx: KDParser.ValueListContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#attribute}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAttribute(_ ctx: KDParser.AttributeContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#attribute}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAttribute(_ ctx: KDParser.AttributeContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#attributeList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAttributeList(_ ctx: KDParser.AttributeListContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#attributeList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAttributeList(_ ctx: KDParser.AttributeListContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#nsName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNsName(_ ctx: KDParser.NsNameContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#nsName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNsName(_ ctx: KDParser.NsNameContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterList(_ ctx: KDParser.ListContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitList(_ ctx: KDParser.ListContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#pair}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPair(_ ctx: KDParser.PairContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#pair}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPair(_ ctx: KDParser.PairContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#map}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMap(_ ctx: KDParser.MapContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#map}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMap(_ ctx: KDParser.MapContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#annotation}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAnnotation(_ ctx: KDParser.AnnotationContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#annotation}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAnnotation(_ ctx: KDParser.AnnotationContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#annotationList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAnnotationList(_ ctx: KDParser.AnnotationListContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#annotationList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAnnotationList(_ ctx: KDParser.AnnotationListContext)
	/**
	 * Enter a parse tree produced by {@link KDParser#dateTime}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDateTime(_ ctx: KDParser.DateTimeContext)
	/**
	 * Exit a parse tree produced by {@link KDParser#dateTime}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDateTime(_ ctx: KDParser.DateTimeContext)
}
