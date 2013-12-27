library abstract_expressions;

/**
 * An initial set of types representing ASTs for the expression language.
 * The types here are abstract, since the leaf types need to be defined in the expressions library itself.
 * See expressions.dart for details. 
 * 
 * Other types can be added separately (see multiplications.dart for an example).
 */

import 'expressions.dart' show Expression;

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

