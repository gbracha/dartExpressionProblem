library string_converter;
/**
 * A string converter for the expression hierarchy. The converter consists of mixin classes that define
 * the toString() method for all the datatypes known at the time this library was defined.
 * New types may be added later, and they should add suitable implementations of toString()
 * for themselves, as mixin classes of the same form.
 * 
 * Most mixin classes here are generic because they need to refer to the expression-valued
 * (and typed) members of the type they are intended to extend. This type is not fixed at the
 * time this code is defined, and so is defined via a type parameter E. E is bounded by
 * ExpressionWithStringConversion which defines the relevant operations required by the
 * function. In this specific case, this is not really necessary since the only required
 * operation is toString() which is defined for all types anyway. Nevertheless, we follow
 * the general formula for adding functions for reasons of pedagogic clarity.
 *  
 * All the mixin classes define abstract members corresponding to the fields of the matching
 * datatype. This is required to avoid warnings about missing members of this. In most cases
 * below, these members are a pair of operands. It would be nice to factor these out to a common
 * definition such as BinaryExpression; however, we cannot define mixins that extend a class
 * other than Object in the current Dart release. Alternatives would include implementing
 * BinaryExpression as an interface, or implementing the datatype the mixin aims to extend
 * (as is done in the simply typed version). None of these significantly shorten the code, and
 * they all induce dependencies on other libraries, so we avoid this approach here.
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
