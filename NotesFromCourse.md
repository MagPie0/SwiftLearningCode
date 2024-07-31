# General Notes
NO SEMI
0123... for index

it is all about trade offs
managing trade offs with the code you use

Ranges: 
0...25 goes through 26 times
0..<25 goes through 24

avoid stringly-type

nil = NULL

#  Types
Int
Float
Double
String = " "
Bool

# Type Inference
*Swift is smart enough to declare the type of a var depending on what value you put into the var

# Variables and constants
var

constant - can't be changed, better performance
    let = constant


# Array
Ordered
fyp is a list/array of post that the algorithm has put in for you

# Set
collection of items, like an array
    unordered
    can't have duplicate values
faster 
    insertion
    removal
    lookup
    

# Hashable
requirement to go into a set
basics types already go into hashable
have to implement your own objects and types into hash

hashValue is a direct pointer to the value


# Dictionary
collection of items with labels
    Key - Value pairs


# Functions
name should be a verb, say what it does

define is the set up
calling it to run it aka the call site

functions should be super generic so they can be reused in any situation

having *to* in the parameters just makes it readable, not required
    you can put whatever you want instead of to, in order to make it readable
    
# If/Else Statement
basic logic (if this happens, then __)

conditional = true or false

# For Loop
iterate over a collection
do something a # of times

reads - for (whatever item) in (collection you are going through)


# Enum
enumeration
a group of values that are related
    ex: directions, days of the week

raw values
    can be added to enum to allow something else to be attached to it
    feels like a key/value type of situation

# Switch statements
often paired with an enum but not always 

has to exhaust all kind of situations which is why you use the default to do that easily
UTILIZE IF HAVING A BIG IF ELSE STATMENT

# Operators
lets your check, change, and combine values

% remainder, modulo operator
/ whole number division unless you are using a double or float

you can't use operators on two different types

assignment
    one equal sign (ex: vars, let assigning the value to one of these)
    
    two equal signs (is this equal to that)
    
! is NOT

# Optionals
giving it the ability to handle the absense of value

you have to unwrap the optional cases
    whether there is a value
    whether it is nil
    
MOST OF YOUR CRASHES WILL BE BECAUSE YOU AREN'T HANDLING A NIL

Guard is like try crash/ exceptional handling in C++

# Self
refers to what class we are in
shorthand way of saying this current instance of the object/class I am in

# Class
an object (<3)

you have to initialize the class

# Inheritance
you get all the vars, init (constructors), and funcs

override ______ lets you override whatever func

# Struct
reference types = point to a specific set of data
ex: if I share a link to a doc and you change it, that is a reference type

vs
value types = copy a data into its own data (reminds me of the new type in c++ in memory)
ex: if I create a doc and email the doc, and you change it, that is a value type because it is your own copy/version of the doc



