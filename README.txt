= truthy

== DESCRIPTION:

This gem is to make it easier to discover the truth values of various Ruby
objects. Ask any object if it is truthy, and it will tell you.

== SYNOPSIS:

    require 'truthy'
    
    true.truthy?   # => true
    false.truthy?  # => false
    nil.truthy?    # => false
    
    [].truthy?                 # => true
    [nil].truthy?              # => true
    %w[one two three].truthy?  # => true
    
    {}.truthy?                 # => true
    { 'one' => 1 }.truthy?     # => true
    
    ''.truthy?                 # => true
    '   '.truthy?              # => true
    'hello'.truthy?            # => true

The possibilities are endless.

== INSTALL:

* sudo gem install truthy
