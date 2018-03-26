class Account

  DEFAULT_BALANCE = 0

  attr_reader :balance 

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end 

  def withdraw(amount)
    @balance -= amount
  end 
end