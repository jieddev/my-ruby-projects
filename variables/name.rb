print "Please provide a number: "

selected_case = gets.chomp

$inputted_name = ""

def getInputtedName()   
  $inputted_name = gets.chomp 
end


case selected_case
  when '1'
    getInputtedName()

    puts "Welcome aboard " + $inputted_name + " please be comfortable"
  
  when '2'
    getInputtedName()

    10.times do |index|
      puts $inputted_name
    end
  
  when '3'
    getInputtedName()
 
    inputted_last_name = gets.chomp

    puts $inputted_name + " " + inputted_last_name

    
  end


