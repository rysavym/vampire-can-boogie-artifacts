lemma SqEasy(a: int, b: int)
    ensures a <= a*a
{
}

lemma Square(a: int, b: int)
    ensures a + b <= (a+b)*(a+b)
{
    // Uncomment this to make Z3 verify
    // assert a + b <= (a+b)*(a+b) by {
    //     SqEasy(a+b, a+b);
    // }
}