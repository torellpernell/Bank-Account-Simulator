class BankAccount()
  attr_reader :balance

  def initializer()
    @balance = 0.0
    return
  end


  def create_account(deposit_amount)
      deposit_amount = ""
      amount = gets
      account_number = BankAccount.new
      return
  end

  def screen
    pp "Welcome to your Bank Account: What would you like to today?"
    pp "Create Account: 1"
    pp "Delete Account: 2"
    pp "Make a Deposit: 3"
    pp "Make a Withdrawal: 4"
    pp "Quit application: 5"
    selection = ""
    selection = gets.chomp
    pp selection
    return
  end


end



=begin
def screen
pp "Welcome to your Bank Account: What would you like to today?"
pp "Create Account: 1"
pp "Delete Account: 2"
pp "Make a Deposit: 3"
pp "Make a Withdrawal: 4"
pp "Quit application: 5"
selection = ""
selection = gets.chomp
pp selection
end

end
=end
accounts = [""]
pp accounts
