class Transaction 

  attr_reader :amount, :date, :type

  def initialize(amount, date, type)
    @amount = amount
    @date = date.strftime('%d/%m/%Y')
    @type = type
  end
end