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

  notify { 'hello':
    message => "Hello, World it's ${sqrt}!",
  }
}
