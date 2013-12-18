library multiplication;
import 'expressions.dart' show Expression;

abstract class AbstractMultiplication {
  Expression operand1, operand2;
  AbstractMultiplication(this.operand1, this.operand2);

}

abstract class MultiplicationWithEval implements AbstractMultiplication {
 int get eval {
    return operand1.eval * operand2.eval;
  }
}