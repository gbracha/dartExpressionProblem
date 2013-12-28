library multiplication;
/**
 * Add a type representing products to the expression hierarchy.
 * Because we know eval has already been defined, we add a mixin to implement it here.
 */
import 'expressions.dart' show Expression;
import 'evaluator.dart' show ExpressionWithEval;

abstract class AbstractMultiplication {
  Expression operand1, operand2;
  AbstractMultiplication(this.operand1, this.operand2);

}

abstract class MultiplicationWithEval {
  ExpressionWithEval get operand1;
  ExpressionWithEval get operand2;
  int get eval => operand1.eval * operand2.eval;
}