method IntegerSqrt(n: nat) returns (r: nat)
  ensures r * r <= n
  ensures (r + 1) * (r + 1) > n
{
  var lo: nat := 0;
  var hi: nat := n + 1;

  while lo + 1 < hi
    invariant lo * lo <= n
    invariant hi * hi > n
    decreases hi - lo
  {
    var mid := (lo + hi) / 2;

    if mid * mid <= n {
      lo := mid;
    } else {
      hi := mid;
    }
  }

  r := (lo + hi)/2;
}
