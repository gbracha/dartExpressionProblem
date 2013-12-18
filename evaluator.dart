library evaluator;

import 'abstractExpressions.dart';

abstract class ExpressionWithEval implements AbstractExpression {
 int get eval;
}

abstract class AdditionWithEval implements AbstractAddition{
 int get eval {
    return operand1.eval + operand2.eval;
  }
}

abstract class SubtractionWithEval implements AbstractSubtraction {
 int get eval {
    return operand1.eval - operand2.eval;
  }
}

abstract class NumberWithEval implements AbstractNumber {
 int get eval {
    return val;
  }
}


