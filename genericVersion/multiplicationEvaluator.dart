library multiplicationEvaluator;
/**
 * Add an evaluator for multiplication.
 * 
 * All the mixin classes define abstract members corresponding to the fields of the matching
 * datatype. This is required to avoid warnings about missing members of this. In most cases
 * below, these members are a pair of operands. It would be nice to factor these out to a common
 * definition such as BinaryExpression; however, we cannot define mixins that extend a class
 * other than Object in the current Dart release. Alternatives would include implementing
 * BinaryExpression as an interface, or implementing the datatype the mixin aims to extend
 * (as is done in the simply typed version). None of these significantly shorten the code, and
 * they all induce dependencies on other libraries, so we avoid this approach here.
 * 
 */
import 'evaluator.dart' show ExpressionWithEval;

abstract class MultiplicationWithEval<E extends ExpressionWithEval> {
   E get operand1;
   E get operand2; 
   int get eval => operand1.eval * operand2.eval;
}