# nihilum::hello
#
# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include nihilum::hello
class nihilum::hello {

  $timestamp = generate('/bin/date', '+%s')
  $line      = inline_template('<%= @timestamp.chomp %>')
  $time_int  = $line + 0
  $sqrt      = nihilum::sqroot($time_int)
  $nxt1_int  = $time_int / 2
  $n1sqrt    = nihilum::sqroot($nxt1_int)
  $nxt2_int  = $time_int / 4
  $n2sqrt    = nihilum::sqroot($nxt2_int)

  $ts1       = generate('/bin/date', '+%s')
  $ln1       = inline_template('<%= @timestamp.chomp %>')
  $ti1       = $line + 1
  $rnd1      = fqdn_rand(10000000, $ti1)
  $sqr1      = nihilum::sqroot($rnd1)

  $ts2       = generate('/bin/date', '+%s')
  $ln2       = inline_template('<%= @timestamp.chomp %>')
  $ti2       = $line + 10
  $rnd2      = fqdn_rand(100000000, $ti2)
  $sqr2      = nihilum::sqroot($rnd2)

  $ts3       = generate('/bin/date', '+%s')
  $ln3       = inline_template('<%= @timestamp.chomp %>')
  $ti3       = $line + 100
  $rnd3      = fqdn_rand(1000000000, $ti3)
  $sqr3      = nihilum::sqroot($rnd3)

  $ts4       = generate('/bin/date', '+%s')
  $ln4       = inline_template('<%= @timestamp.chomp %>')
  $ti4       = $line + 1000
  $rnd4      = fqdn_rand(10000000000, $ti4)
  $sqr4      = nihilum::sqroot($rnd4)

  $ts5       = generate('/bin/date', '+%s')
  $ln5       = inline_template('<%= @timestamp.chomp %>')
  $ti5       = $line + 10000
  $rnd5      = fqdn_rand(100000000000, $ti5)
  $sqr5      = nihilum::sqroot($rnd5)

  $ts6       = generate('/bin/date', '+%s')
  $ln6       = inline_template('<%= @timestamp.chomp %>')
  $ti6       = $line / 9
  $rnd6      = fqdn_rand(10000000, $ti6)
  $sqr6      = nihilum::sqroot($rnd6)

  $ts7       = generate('/bin/date', '+%s')
  $ln7       = inline_template('<%= @timestamp.chomp %>')
  $ti7       = $line / 99
  $rnd7      = fqdn_rand(10000000, $ti7)
  $sqr7      = nihilum::sqroot($rnd7)

  $ts8       = generate('/bin/date', '+%s')
  $ln8       = inline_template('<%= @timestamp.chomp %>')
  $ti8       = $line / 999
  $rnd8      = fqdn_rand(10000000, $ti8)
  $sqr8      = nihilum::sqroot($rnd8)

  notify { 'hello':
    message => "Seconds from epoch: ${time_int}, ${sqrt}, ${n1sqrt}, ${n2sqrt}, ${sqr1}, ${sqr2}, ${sqr3}, ${sqr4}, ${sqr5}",
  }
}
