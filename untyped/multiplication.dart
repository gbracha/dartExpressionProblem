library multiplication;

abstract class AbstractMultiplication {
  var operand1, operand2;
  AbstractMultiplication(this.operand1, this.operand2);
}

abstract class MultiplicationWithEval {
  get operand1;
  get operand2;
  get eval {
    return operand1.eval * operand2.eval;
  }
}