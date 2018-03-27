require 'transaction'

describe Transaction do 
  subject(:transaction) { described_class.new }
  let(:non_default_transaction) { described_class.new(1000, Time.new(2018), 'credit', 'balance') }

  context 'when a transaction is initialized' do
    it 'should take an argument for the amount' do
      expect(non_default_transaction.amount).to eq 1000
    end 

    it 'should take an argument for the date' do
      expect(non_default_transaction.date).to eq '01/01/2018'
    end 

    it 'should take an argument for the type of transaction' do 
      expect(non_default_transaction.type).to eq 'credit'
    end 

    it 'should take an argument of the current balance after the transaction' do 
      expect(non_default_transaction.balance).to eq 'balance'
    end
  end 
end 