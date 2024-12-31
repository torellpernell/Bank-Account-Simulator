class BankAccount
  attr_reader :balance

  def initialize
    @balance = 0.0
    return
  end
  
  def deposit
    puts "Please enter the amount you would like to deposit: "
    amount = gets.chomp.to_f
    while amount < 1
       "ERROR: Please enter a value greater than 0: "
       amount = gets.chomp
    end 
    pp "amount" + amount.to_s
    pp "@balance" + @balance.to_s
    @balance = @balance + amount.to_f
    puts "Your new balance is: " + @balance.to_s
    return 
  end

  def withdraw
    puts "Please enter the amount you would like to withdraw: "
    amount = gets.chomp
    pp "amount" + amount.to_s
    pp "@balance" + @balance.to_s
    @balance = @balance - amount.to_f
    puts "Your new balance is: " + @balance.to_s
    return
  end

  
end

@accounts = []

def create_account
  temp = BankAccount.new 
  @accounts.push(temp)
  puts "Congratulations!! Your new bank account number is: " + @accounts.length.to_s
  return
end

def dashboard
  puts "Welcome to your Bank Account: What would you like to do today?"
  puts "Create Account: 1"
  puts "Check Balance: 2"
  puts "Make a Deposit: 3"
  puts "Make a Withdrawal: 4"
  puts "Quit application: 5"
  return
end


selection = 1
account_number = 0


while selection > 0 && selection < 6
  dashboard
  selection = gets.chomp.to_i
  if selection == 1
    create_account
  elsif selection == 2
    puts "Please enter your account number:"
    account_number = gets.chomp.to_i
    puts "Your account balance is: " + @accounts[account_number + 1].balance.to_s
  elsif selection == 3
    puts "Please enter your account number:"
    account_number = gets.chomp.to_i
    @accounts[account_number - 1].deposit
    
  elsif selection == 4
    puts "Please enter your account number:"
    account_number = gets.chomp.to_i
    @accounts[account_number - 1].withdraw
  elsif selection == 5
    puts "Thank you banking with us. Have an great day!"
    selection = 5
  else puts "ERROR: Please enter a whole number between 1-5. Press enter key to try again."
    wait_for_user_input = gets.chomp.to_i
    selection = 1
  end
return
end
