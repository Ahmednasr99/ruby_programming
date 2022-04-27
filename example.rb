num = 100 # Integer => represents numerical values (whole numbers)
float = 3.14 # Float => represents decimal numbers

str = 'Burn the boats!' # String => represents text values, unlike other langs, Strings are MUTABLE
:str # Symbol => Are immutable

array = [1, 2, 3] # Array => represents a collection of values stored contiguously in memory
hash = {:text => 'Burn the boats'} # Hash => stores data in key/value pairs
          # works like JavaScript objects
          # also known as dictionaries
          # called "dictionary" because you look up values by name

bool = true

# nil is null in JavaScript
var = nil # NilClass

###############
## VARIABLES ##
###############

# local variable
str = 'Burn the boats'

# constants
STR = 'BURN THE BOATS'

# instance variables
@str = "Burn the instance"

# global variable
$str = 'Burn the world'

# class variable
# this is a variable that works like a constant for a class
@@str = 'Burn the class'

###############
## FUNCTIONS ##
###############

# how you define a normal function
def greet(cb)
  puts 'Hello world!'
  cb.call
end

def callback
  puts 'this is a callback!'
end

fire = Proc.new { puts 'This is called after' }
greet(fire)
