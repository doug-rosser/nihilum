# nihilum::hello
#
# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include nihilum::hello
class nihilum::hello {
  notify { 'hello':
    message => "Hello, World!",
  }
}
