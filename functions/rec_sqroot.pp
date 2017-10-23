#function nihilum::sqroot(Integer $num) >> Integer {
#  $num
#}

function nihilum::rec_sqroot(Integer $a, Integer $b) >> Integer {
  if ( abs($a - $b) > 100 ) {
    $new_a = ( $a + $b ) / 2
    $new_b = $b/$a
    nihilum::rec_sqroot($new_a, $new_b)
  }
  else {
    $a
  }
}
