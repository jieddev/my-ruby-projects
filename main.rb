require_relative 'lib/bank_account'

account = BankAccount.new("Jiedel")

p account.withdraw(100)

account.display_account()