require 'transaction'

describe Transaction do 
  subject(:transaction) { described_class.new }
  let(:non_default_transaction) { described_class.new(1000, 'test date') }

  context 'when a transaction is initialized' do
    it 'should take an argument for the amount' do
      expect(non_default_transaction.amount).to eq 1000
    end 

    it 'should take an argument for the date' do
      expect(non_default_transaction.date).to eq 'test date'
    end 
  end 
end 