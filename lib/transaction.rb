class Transaction

  attr_reader :amount, :date, :type, :balance

  def initialize(amount, date, type, balance)
    @amount = amount
    @date = date.strftime('%d/%m/%Y')
    @type = type
    @balance = balance
  end
end
