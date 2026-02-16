def get_name()
  print "What is your name? (type 'exit' to quit): "
  inputted_name = gets.chomp
  return inputted_name
end

def user_authentication(username, password, name = "User")  
  if username == "user" && password == "user123"
    puts "Welcome back #{name}! "

  elsif username == "admin" && password == "admin123"
    puts "Welcome back admin!"
  else 
    puts "Error authenticating"
  end
end

def loop() 
  name = get_name()
  if (name == "exit")
    puts "Authentication ended"
  else 
    print "Username: "
    inputted_username = gets.chomp
    print "Password: "
    inputted_password = gets.chomp

    user_authentication(inputted_username, inputted_password, name)
  
    loop()
  end
end

loop()

