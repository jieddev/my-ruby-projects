class BankAccount
  def initialize(account_owner_name, current_balance = 0)
    @account_owner_name = account_owner_name 
    @current_balance = current_balance
  
  end

  def deposit(amount)
    return @current_balance = @current_balance + amount
  
  end

  def withdraw(amount)
    if amount > @current_balance
      return "Insufficient funds!"
    else
      return @current_balance = @current_balance - amount
    end

  end

  def balance()
    return @current_balance
  end

  def display_account()
    puts "Owner: #{@account_owner_name}"
    puts "Balance: #{@current_balance}"
  
  end



end
