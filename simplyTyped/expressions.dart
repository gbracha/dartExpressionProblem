library expressions;

/**
 * This library defines an application that handles an simple language of expressions.
 * The language is represented via a number of types representing AST nodes for the language,
 * and a number of mixin classes representing functions that process these types.
 * 
 * This library should be updated whenever a new type is added to the Expression hierarchy and whenever a new
 * function that processes expressions is defined.
 * 
 * The library should always define the type Expression, and its leaf subtypes.
 * 
 * 
 * Functions on expressions are defined in other libraries as the need arises.
 * Each function F is defined via series of mixin classes
 * 
 * class XWithF { f() {...} }
 * 
 * for each known leaf type X, and for Expression. The class ExpressionWithF defines the signature of F.
 * 
 * Each type X is represented via an abstract class of the form
 * 
 * abstract class AbstractX { ... }
 * 
 * These types are defined in other libraries and define the public structure of the type and its constructor.
 * Only the leaf types derived from these abstract types are defined here.
 * 
 * Adding a new leaf type X requires defining type AbstractX and adding
 * type X here, defined as a mixin application as described below.
 * 
 * Expression is defined here as a mixin application that applies all classes ExpressionWithFk
 * representing the different function signatures on expressions in sequence to define the ultimate expression type 
 * that supports all known functionality. Initially, Expression would be defined:
 * 
 * class Expression = Object with AbstractExpression;
 * 
 * and thereafter we could add each new function type by adding the corresponding class to the mixin application:
 * 
 * class Expression = Object with AbstractExpression, ExpressionWithF1, ExpressionWithF2, ..., ExpressionWithFn;
 * 
 * We can simplify that by using AbstractExpression directly as the superclass:
 * 
 * class Expression = AbstractExpression with ExpressionWithF1, ExpressionWithF2, ..., ExpressionWithFn;
 * 
 * Other libraries will define the abstract types and functions. Typically these will need to import this
 * library, and at least obtain Expression from it.
 * 
 * Because of the restriction that classes with constructors cannot be used as mixins, we cannot start the
 * process for leaf types with something like
 * 
 * class X = Object with AbstractX;
 * 
 * so if there are no functions, we need not define the ultimate leaf types at all. Only the abstract types
 * need be defined for any types of interest. 
 * 
 * Once the first function is introduced, each leaf type is analogously defined by a mixin application that 
 * subclasses the corresponding abstract type, and new functions require adding their corresponding class to be mixed
 * in for each leaf type.  Hence a leaf type has the form
 * 
 * class X = AbstractX with XWithF1, XWithF2; // etc
 * 
 */

import 'abstractExpressions.dart' show AbstractExpression, AbstractAddition, AbstractSubtraction, AbstractNumber;
import 'evaluator.dart' show ExpressionWithEval, AdditionWithEval, SubtractionWithEval, NumberWithEval;
import 'multiplication.dart' show AbstractMultiplication, MultiplicationWithEval;
import 'stringConverter.dart'show ExpressionWithStringConversion, AdditionWithStringConversion,
                                  SubtractionWithStringConversion, NumberWithStringConversion, 
                                  MultiplicationWithStringConversion;

class Expression = 
  AbstractExpression with ExpressionWithEval, ExpressionWithStringConversion;

class Addition = 
  AbstractAddition with AdditionWithEval, AdditionWithStringConversion implements Expression;

class Subtraction = 
  AbstractSubtraction with SubtractionWithEval, 
                  SubtractionWithStringConversion implements Expression;

class Number = 
  AbstractNumber with NumberWithEval,
                NumberWithStringConversion implements Expression;


class Multiplication = 
  AbstractMultiplication with  MultiplicationWithEval, 
                  MultiplicationWithStringConversion implements Expression;


void main() {
  Expression e = new Multiplication(new Addition(new Number(4), new Number(2)), 
                                    new Subtraction(new Number(10), new Number(7))
                    );
  print('$e = ${e.eval}');
}
