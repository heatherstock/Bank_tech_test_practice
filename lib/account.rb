require_relative 'statement'
require_relative 'transaction'

class Account

  DEFAULT_BALANCE = 0

  attr_reader :balance, :statement

  def initialize(balance = DEFAULT_BALANCE, statement = Statement.new)
    @balance = balance
    @statement = statement
  end

  def deposit(amount)
    @balance += amount
    t = Transaction.new(amount.to_s, Time.now, 'credit', @balance.to_s)
    statement.update(t)
  end

  def withdraw(amount)
    @balance -= amount
    t = Transaction.new(amount.to_s, Time.now, 'debit', @balance.to_s)
    statement.update(t)
  end

  def display_statement
    @statement.display
  end
end
