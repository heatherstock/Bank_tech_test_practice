require_relative 'transaction'

class Statement

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def update(transaction)
    @transactions << transaction
  end 

  def display 
    puts 'date || credit || debit || balance' 
    @transactions.each do |transaction|
      if transaction.type == 'credit' 
        puts transaction.date + ' || ' + transaction.amount.to_s + ' ||  || ' + transaction.balance.to_s
      elsif transaction.type == 'debit'
        puts transaction.date + ' || || ' + transaction.amount.to_s + ' || ' + transaction.balance.to_s
      end
    end
  end 
end 