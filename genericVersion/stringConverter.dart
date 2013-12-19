library string_converter;
/**
 * A string converter fro the expression hierarchy. The converter consists of mixin classes that define
 * the toString() method for all the datatypes known at the time this library was defined.
 * New types may be added later, and they should add suitable implementations of toString()
 * for themselves, as mixin classes of the same form.
 */


abstract class ExpressionWithStringConversion {
 String toString();
}

abstract class AdditionWithStringConversion<E extends ExpressionWithStringConversion> {
  E get operand1;
  E get operand2;
  String toString() =>'($operand1 + $operand2))';
}

abstract class SubtractionWithStringConversion<E extends ExpressionWithStringConversion> {
  E get operand1;
  E get operand2;
  String toString() => '($operand1 - $operand2)';
}

abstract class NumberWithStringConversion {
  int get val;
  String toString() => val.toString();
}

abstract class MultiplicationWithStringConversion<E extends ExpressionWithStringConversion> {
  E get operand1;
  E get operand2;
  String toString() => '($operand1 * $operand2)';
}
