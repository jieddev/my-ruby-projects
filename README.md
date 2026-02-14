# my-ruby-projects
Ruby projects are saved within this repository. 

Each projects are saved on its respective branch so to find a specific project, you must select a branch to the dropdown. 


##Ruby Language Guide


--- Methods ---

puts (equivalent to console.log or print)
gets (request for user input)
gets.chomp (removes the /n at the end of the user input)

String Methods:
- .capitalize (this capitalizes the first letter of the worod)
- .include? (returns a boolean value of true if the string has a substring)
- .upcase (returns an uppercase version of the string)
- .downcase
- .empty? (returns a boolean value of true if the string is empty)
- .reverse
- .split or .split("")
- .strip (removes extra spaces)
- .sub("", "") (replaces the first string or char with another)
- .gsub("", "") (replaces all matching string with another)
- .insert(position, string) (inserts a string to a string)
- .delete (removes a string or a character in a string)
- .prepend()

- .to_s (converts other objects to string)
- .to_i (converts to integer)
- .to_f 

- .even?
- .odd?
- .remainder()
- .divmod()

- .nil


--- LITERALS ---

'Hello, world!'          # string literal
375                      # integer literal
3.141528                 # float literal
true                     # boolean literal
{ 'a' => 1, 'b' => 2 }   # hash literal
[ 1, 2, 3 ]              # array literal
:sym                     # symbol literal
nil                      # nil literal

----- CLI Commands ----

rails server (runs PUMA server)


irb -r ./your_file.rb (To load a file in IRB)


----


--- TYPES OF VARIABLES ---

MY_CONSTANT = '' (To declare a constant variable)
$my_global = '' (To declare a global variable)
@@myclass = 0 (To declare a class variable)
@myinstance = '' (To declare an instance variable)
myvar = '' (To declare a local variable)

