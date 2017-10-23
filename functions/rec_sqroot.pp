# Original non-recursive code from:
# https://stackoverflow.com/questions/1623375/writing-your-own-square-root-function

function nihilum::rec_sqroot(Integer $a, Integer $b, Integer $x) >> Integer {
  #notice("\$a = ${a} , \$b = ${b}")
  if ( abs($a - $b) > 100 ) {
    $new_a = ( $a + $b ) / 2
    $new_b = $x/$a
    nihilum::rec_sqroot($new_a, $new_b, $x)
  }
  else {
    $a
  }
}
