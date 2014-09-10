
class X(Y)
"Make a class named X that is-a Y"

class X(object): def initialize(j)
"Class X has-a initialize that takes a J parameter"

class X(object): def M(self, J)
"class X has-a function named M that takes a J parameter"

foo = X()
"Set foo to an instance of class X"

foo.M(J)
"from foo get the M function and call it with the parameter J"

foo.K = Q
"from foo get the attribute K and set it to Q"

