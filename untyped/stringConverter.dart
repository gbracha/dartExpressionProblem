library string_converter;

abstract class ExpressionWithStringConversion {
 toString();
}

abstract class AdditionWithStringConversion {
  get operand1;
  get operand2;
  toString() {
    return '(' + operand1.toString() + ' + ' + operand2.toString() + ')';
  }
}

abstract class SubtractionWithStringConversion {
  get operand1;
  get operand2;
  toString() {
    return '($operand1 - $operand2)';
  }
}

abstract class NumberWithStringConversion {
  get val;
  toString() {
    return val.toString();
  }
}

abstract class MultiplicationWithStringConversion {
  get operand1;
  get operand2;
  toString() {
    return '('+ operand1.toString() + ' * ' + operand2.toString() + ')';
  }
}
