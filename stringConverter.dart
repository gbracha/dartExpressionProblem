library string_converter;

import 'abstractExpressions.dart';
import 'multiplication.dart';

abstract class ExpressionWithStringConversion implements AbstractExpression {
 String toString();
}

abstract class AdditionWithStringConversion implements AbstractAddition{
 String toString() {
    return '(' + operand1.toString() + ' + ' + operand2.toString() + ')';
  }
}

abstract class SubtractionWithStringConversion implements AbstractSubtraction {
 String toString() {
    return '($operand1 - $operand2)';
  }
}

abstract class NumberWithStringConversion implements AbstractNumber {
 String toString() {
    return val.toString();
  }
}

abstract class MultiplicationWithStringConversion implements AbstractMultiplication {
 String toString() {
    return '('+ operand1.toString() + ' * ' + operand2.toString() + ')';
  }
}
