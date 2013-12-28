library string_converter;
/**
 * A string converter fro the expression hierarchy. The converter consists of mixin classes that define
 * the toString() method for all the datatypes known at the time this library was defined.
 * New types may be added later, and they should add suitable implementations of toString()
 * for themselves, as mixin classes of the same form.
 */

import 'abstractExpressions.dart' show AbstractExpression, AbstractAddition, AbstractSubtraction, AbstractNumber;
import 'multiplication.dart' show AbstractMultiplication;

abstract class ExpressionWithStringConversion implements AbstractExpression {
 String toString();
}

abstract class AdditionWithStringConversion implements AbstractAddition{
 String toString() =>'($operand1 + $operand2))';
}

abstract class SubtractionWithStringConversion implements AbstractSubtraction {
 String toString() => '($operand1 - $operand2)';
}

abstract class NumberWithStringConversion implements AbstractNumber {
 String toString() => val.toString();
}

abstract class MultiplicationWithStringConversion implements AbstractMultiplication {
 String toString() => '($operand1 * $operand2)';
}
