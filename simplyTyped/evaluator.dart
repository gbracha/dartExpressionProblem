library evaluator;

/**
 * An evaluator for the expression hierarchy. The evaluator consists of mixin classes that define
 * the eval getter for all the datatypes known at the time this library was defined.
 * New types may be added later, and they should add suitable implementations of eval
 * for themselves, as mixin classes of the same form.
 * 
 * For an example, see multiplications.dart, which adds a new AST node to represent
 * products, as well as an implementation of eval for it.
 */

import 'abstractExpressions.dart' show AbstractExpression, AbstractAddition, AbstractSubtraction, AbstractNumber;

abstract class ExpressionWithEval implements AbstractExpression {
 int get eval;
}

abstract class AdditionWithEval implements AbstractAddition {
 int get eval => operand1.eval + operand2.eval;
}

abstract class SubtractionWithEval implements AbstractSubtraction {
 int get eval => operand1.eval - operand2.eval;
}

abstract class NumberWithEval implements AbstractNumber {
 int get eval => val;
}


