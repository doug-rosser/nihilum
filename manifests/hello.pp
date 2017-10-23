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

  notify { 'hello':
    message => "Seconds from epoch: ${time_int}, ${sqrt}, ${n1sqrt}, ${n2sqrt}",
  }
}
