ghost function {:axiom} sqrt(x: real): real

lemma {:axiom} roots()
  ensures forall x: real :: x >= 0.0 ==> sqrt(x) * sqrt(x) == x

lemma {:axiom} mult(a: real, b: real)
  requires a >= 0.0
  requires b >= 0.0
  ensures sqrt(a) * sqrt(b) == sqrt(a*b)

lemma {:axiom} increasing(a: real, b: real)
  requires a >= 0.0
  requires b >= 0.0
  requires a > b
  ensures sqrt(a) > sqrt(b)

lemma ident(a: real)
  requires a >= 0.0
  ensures a == sqrt(a * a)
{
  assert sqrt(a * a) == a by {
    mult(a, a);
    roots();
  }
}

class Triangle {
  var a: real
  var b: real
  var c: real
}

lemma TriangleInequality(t: Triangle)
  requires 0.0 < t.a
  requires 0.0 < t.b
  requires 0.0 < t.c
  requires t.a * t.a + t.b * t.b == t.c * t.c
  ensures t.a + t.b > t.c
{
  var a := t.a; var b := t.b; var c := t.c;
  assert a + b > c by {
    calc {
      a + b;
      { ident(a+b); }
      sqrt((a+b) * (a+b));
    ==
      sqrt(a*a + 2.0*a*b + b*b);
    >
      { increasing(a*a + 2.0*a*b + b*b, a*a+b*b); }
      sqrt(a*a + b*b);
    ==
      sqrt(c*c);
      { ident(c); }
      c;
    }
  }
}