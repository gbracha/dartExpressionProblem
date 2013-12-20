library evaluator;

/**
 * An evaluator for the expression hierarchy. The evaluator consists of mixin classes that define
 * the eval getter for all the datatypes known at the time this library was defined.
 * New types may be added later, and they should add suitable implementations of eval
 * for themselves, as mixin classes of the same form.
 * 
 * For an example, see multiplications.dart, which adds a new AST node to represent
 * products, as well as an implementation of eval for it.
 * 
 * Most mixin classes here are generic because they need to refer to the expression-valued
 * (and typed) members of the type they are intended to extend. This type is not fixed at the
 * time this code is defined, and so is defined via a type parameter E. E is bounded by
 * ExpressionWithEval which defines the eval getter required by the
 * function. 
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



abstract class ExpressionWithEval {
 int get eval;
}

abstract class AdditionWithEval<E extends ExpressionWithEval> {
 E get operand1;
 E get operand2;
 int get eval => operand1.eval + operand2.eval;
}

abstract class SubtractionWithEval<E extends ExpressionWithEval>{
  E get operand1;
  E get operand2;
  int get eval => operand1.eval - operand2.eval;
}

abstract class NumberWithEval {
  get val;
  int get eval => val;
}


