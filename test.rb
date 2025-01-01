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
       amount = gets.chomp.to_f
    end 
    pp "amount" + amount.to_s
    pp "@balance" + @balance.to_s
    @balance = @balance + amount.to_f
    puts "Your transaction was succesfully completed. Your new balance is: " + @balance.to_s
    puts "Please press Enter to proceed"
    waiting_for_user_input = gets
    return 
  end

  def withdraw
    puts "Please enter the amount you would like to withdraw: "
    amount = gets.chomp.to_f
    while amount - @balance < 0
      puts "Oops! The amount you entered is too high. Please enter an amount at or below: $" + @balance.to_s
      amount = gets.chomp.to_f
    end
    @balance = @balance - amount.to_f
    puts "Your transaction was successfully completed. Your new balance is: " + @balance.to_s
    puts "Please press Enter to proceed"
    waiting_for_user_input = get
    return
  end
  
  def show_balance
    return @balance
  end

end

# array used to contain created new BankAccount objects
@accounts = []

def create_account
  temp = BankAccount.new 
  @accounts.push(temp)
  puts "Congratulations!! Your new bank account number is: " + @accounts.length.to_s
  puts "Please remember your account number, then press Enter to proceed"
  waiting_for_user_input = gets
  return
end

def dashboard
  puts "Welcome to your Online Bank Account: What would you like to do today?"
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
  while selection < 1 || selection > 6
    puts "Oops! You can only enter a selection between 1-5. Please try again."
    selection = gets.chomp.to_i
  end

  if selection == 1
    create_account
  elsif selection == 2
    puts "Please enter your account number:"
    account_number = gets.chomp.to_i
    while @accounts[account_number - 1].nil?
      puts "ERROR!! Invalid bank account number. Please enter a valid account number: "
      account_number = gets.chomp.to_i
      
    end 
    puts "Your account balance is: " + @accounts[account_number - 1].show_balance.to_s
    puts "Please press Enter to proceed"
    waiting_for_user_input = gets
  elsif selection == 3
    puts "Please enter your account number:"
    account_number = gets.chomp.to_i
    while @accounts[account_number - 1].nil?
      puts "ERROR!! Invalid bank account number. Please enter a valid account number: "
      account_number = gets.chomp.to_i
    end
    @accounts[account_number - 1].deposit
    
  elsif selection == 4
    puts "Please enter your account number:"
    account_number = gets.chomp.to_i
    while @accounts[account_number - 1].nil?
      puts "ERROR!! Invalid bank account number. Please enter a valid account number: "
      account_number = gets.chomp.to_i
    end
    @accounts[account_number - 1].withdraw
  elsif selection == 5
    puts "Thank you for banking with us. Have a great day!"
    return
  else puts "ERROR: Please enter a whole number between 1-5. Press enter key to try again."
    wait_for_user_input = gets.chomp.to_i
    selection = 1
  end

end

