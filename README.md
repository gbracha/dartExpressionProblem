dartExpressionProblem
=====================

This code shows a solution to the expression problem using mixins. At the top level here are 5 files that describe a non-generic but typed version. In addition there are subdirectories for untyped and generic versions. The typed version should move to its own subdirectory as well. The typed version has the folloing structure: 

abstractExpressions.dart shows an initial type hierarchy for an AST for a simple expression language.
evaluator.dart defines an evaluator on this AST.
multiplication.dart adds a new type and provides the necessary extension to the evaluator, separately.
stringConverter.dart defines toString() on the extended hierarchy including multiplication.
expressions.dart ties everything together. 

The assumption is that we started without multiplication and without any functions. Then we added evaluation,
followed by adding the AST node for multiplication. Next we added string conversion. Each extension is separate.
The only file that needs to be modified at each stage is expressions.dart.

dart-expression-problem
