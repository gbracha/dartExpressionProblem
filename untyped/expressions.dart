library expressions;

import 'abstractExpressions.dart';
import 'evaluator.dart';
import 'multiplication.dart';
import 'stringConverter.dart';

class Expression = 
  ExpressionWithEval with ExpressionWithStringConversion;

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


main() {
  var e = new Multiplication(new Addition(new Number(4), new Number(2)), 
                                    new Subtraction(new Number(10), new Number(7))
                    );
  print('$e = ${e.eval}');
}
