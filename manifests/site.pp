# Puppet Master Entry point.
# Classify your node here.

node default {

  notify { "hello": }

  include lueders
  
}
