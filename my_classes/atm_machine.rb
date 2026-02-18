module Maintenance
  def maintenance()
    puts "ATM IS UNDER MAINTENANCE! COME BACK LATER"
  end

end

class AtmMachine
  def deposit(money_to_deposit)
    puts "\e[32mYou've deposited ₱#{money_to_deposit}!\e[0m"
  end

  def withdraw(money_to_withdraw)
    puts "\e[31mYou've withdrawn ₱#{money_to_withdraw}\e[0m"
  end

  include Maintenance

end


def ask_amount()
  print "Amount: "
  user_inputted_amount = gets.chomp
  return user_inputted_amount

end


def transact()
  transaction_1 = AtmMachine.new

  print "Jieddev ATM Machine (Deposit/Withdraw/Balance/Exit): "
  user_input = gets.chomp

  if user_input == "Exit"
    puts "Thank you for using Jieddev ATM Machine!"
    return
  end

  case user_input
    when "Deposit"
      amount = ask_amount()
      transaction_1.deposit(amount)

    when "Withdraw"
      amount = ask_amount()
      transaction_1.withdraw(amount)

    when "Maintenance"
      transaction_1.maintenance()
      return 
    end


  transact()

end

transact()