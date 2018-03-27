class Transaction 

  attr_reader :amount, :date

  def initialize(amount, date)
    @amount = amount
    @date = date.strftime('%d/%m/%Y')
  end
end