library abstract_expressions;

import 'expressions.dart';

abstract class AbstractExpression {}

abstract class AbstractAddition {
  Expression operand1, operand2;
  AbstractAddition(this.operand1, this.operand2);
} 


abstract class AbstractSubtraction {
  Expression operand1, operand2;
  AbstractSubtraction(this.operand1, this.operand2);
}

abstract class AbstractNumber {
  int val;
  AbstractNumber(this.val);
}

