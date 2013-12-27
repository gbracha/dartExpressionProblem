library string_converter;

abstract class ExpressionWithStringConversion {
 String toString();
}

abstract class AdditionWithStringConversion {
  ExpressionWithStringConversion get operand1;
  ExpressionWithStringConversion get operand2;
  String toString() {
    return '(' + operand1.toString() + ' + ' + operand2.toString() + ')';
  }
}

abstract class SubtractionWithStringConversion {
  ExpressionWithStringConversion get operand1;
  ExpressionWithStringConversion get operand2;
  String toString() {
    return '($operand1 - $operand2)';
  }
}

abstract class NumberWithStringConversion {
  int get val;
  String toString() {
    return val.toString();
  }
}

abstract class MultiplicationWithStringConversion {
  ExpressionWithStringConversion get operand1;
  ExpressionWithStringConversion get operand2;
  String toString() {
    return '('+ operand1.toString() + ' * ' + operand2.toString() + ')';
  }
}
