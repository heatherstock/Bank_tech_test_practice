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
      t_date = transaction.date
      t_amount = transaction.amount
      t_balance = transaction.balance
      if transaction.type == 'credit'
        puts t_date + ' || ' + t_amount + ' ||  || ' + t_balance
      else puts t_date + ' || || ' + t_amount + ' || ' + t_balance
      end
    end
  end
end
