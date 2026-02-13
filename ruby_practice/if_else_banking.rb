def withdraw() 
  print "Enter amount: "
  input = gets.chomp

  if input == "exit"
    puts "Thank you for banking with us!"
  else 
    amount = input.to_i
    if amount == 100
      puts "100 will be withdrawn from your bank account"
    elsif amount > 100 
      puts "#{amount} will be withdrawn"
    elsif amount > 5000
      puts "#{amount} is not accepted"
    elsif 
      puts "error occured withdrawing. Please try again"
    end

    withdraw()
  end
end

withdraw()