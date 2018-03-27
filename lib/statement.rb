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
    collate
  end 

private
  def collate
    @transactions.reverse_each do |transaction|
      if transaction.type == 'credit' 
        puts transaction.date + ' || ' + transaction.amount + ' ||  || ' + transaction.balance
      elsif transaction.type == 'debit'
        puts transaction.date + ' || || ' + transaction.amount + ' || ' + transaction.balance
      end
    end
  end
end 