class Statement

  attr_reader :transaction

  def initialize
    @transaction = []
  end

  def display 
    return @transaction
  end 
end 