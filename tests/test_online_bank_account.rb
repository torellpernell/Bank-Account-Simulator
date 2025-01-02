require 'minitest/autorun'
require './online_bank_account'

class TestOnlineBankAccount < Minitest::Test
  def setup
    @bank_account = BankAccount.new
  end

  def test_deposit
    assert_equal 40, @bank_account.deposit_test(40), "Deposit method failed"
  end
    
  def test_withdraw
    @bank_account.deposit_test(40)
    assert_equal 20, @bank_account.withdraw_test(20), "Withdrawal method failed"
  end
end
