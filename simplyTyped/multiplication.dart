library multiplication;
/**
 * Add a type representing products to the expression hierarchy.
 * Because we know eval has already been defined, we add a mixin to implement it here.
 */
import 'expressions.dart' show Expression;

abstract class AbstractMultiplication {
  Expression operand1, operand2;
  AbstractMultiplication(this.operand1, this.operand2);

}

abstract class MultiplicationWithEval implements AbstractMultiplication {
 int get eval => operand1.eval * operand2.eval;
}