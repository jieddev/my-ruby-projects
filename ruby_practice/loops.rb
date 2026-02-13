print "What loop in Ruby you wanna execute: "
selected_number = gets.chomp

case selected_number
when "Loop"
  puts "This is the Loop that is rarely used"
  i = 0
  loop do
    puts "i is #{i}"
    i += 1
    break if i == 10
  end

when "While Loop"
  puts "This is the While Loop"
  # i = 0
  # while i < 10 do
  # puts "i is #{i}"
  # i += 1
  # end
  puts "Are we there yet?"
  while gets.chomp != "yes" do
    puts "Are we there yet?"
  end

when "Until Loop"
  puts "This is the Until Loop"
  i = 0
  until i >= 10 do
    puts "i is #{i}"
    i += 1
  end

when "For Loop"
  puts "This is For Loop with inclusive range"
  for i in 0..5
    puts "#{i} out of 5 Stick-o"
  end

when "Times Loop"
  puts "This is the Times Loop"
  5.times do 
    puts "I will say this 5 times"
  end
  puts "Done!"

when "Times Loop Countdown"
  puts "Let's do a countdown using Times Loop!"
  3.times do |number|
    puts "#{number + 1}"
  end
  puts "Happy New Year!"

when "Upto and Downto Loop"
  puts "This is the Upto and Downto Loop using .upto() and .downto()"
  puts "This will count 1 up to 5"
  1.upto(5) {|number| puts "#{number}"}
else 
  puts "Error occured. Please check your input and try again."
end