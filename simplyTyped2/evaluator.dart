library evaluator;


abstract class ExpressionWithEval {
  int get eval;
}

abstract class AdditionWithEval {
  ExpressionWithEval get operand1;
  ExpressionWithEval get operand2;
  int get eval {
    return operand1.eval + operand2.eval;
  }
}

abstract class SubtractionWithEval {
  ExpressionWithEval get operand1;
  ExpressionWithEval get operand2;
  int get eval {
    return operand1.eval - operand2.eval;
  }
}

abstract class NumberWithEval {
  int get val;
  int get eval {
    return val;
  }
}


