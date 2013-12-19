dartExpressionProblem - generically typed version
=====================

This code shows a solution to the expression problem using mixins. At the top level here are 6 files:

abstractExpressions.dart shows an initial type hierarchy for an AST for a simple expression language.
evaluator.dart defines an evaluator on this AST.
multiplication.dart adds a new type.
multiplicationEvaluator provides the necessary extension to the evaluator for the new type, separately.
stringConverter.dart defines toString() on the extended hierarchy including multiplication.
expressions.dart ties everything together. 

The assumption is that we started without multiplication and without any functions. Then we added evaluation,
followed by adding the AST node for multiplication. We could add evaluation support for multiplication at that time, 
but just to emphasize that the extensions could be added separately, we have factored them into two files in this
version. Next we added string conversion. Each extension is separate.
The only file that needs to be modified at each stage is expressions.dart.

This version can be typechecked in a modular fashion.

dart-expression-problem
