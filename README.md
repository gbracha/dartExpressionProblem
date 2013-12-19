dartExpressionProblem
=====================

This directory shows solutions to the expression problem using mixins. There are several versions. One is untyped. 
Another is typed, but induces more dependencies among the component libraries. This is not a big issue in practice
because there is no binary format for Dart, and hence no real separate compilation anyway. However, if one truly
wants modular typechecking, one has to use generics, and there is a version that does that as well.

dart-expression-problem
