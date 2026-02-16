def user_greeting(username = "User")
  puts "Welcome back #{username}!"
end

def scream(words)
  words = words + "!!!!"
  return words
  # puts words
end

puts scream("Yippeee")