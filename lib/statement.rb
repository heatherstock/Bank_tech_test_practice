class Statement

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def display 
    return @transactions
  end 
end 