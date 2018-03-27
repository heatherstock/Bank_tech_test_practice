require 'transaction'

describe Transaction do 
  subject(:transaction) { described_class.new }
  let(:non_default_transaction) { described_class.new(1000) }

  context 'when a transaction is initialized' do
    it 'should take an argument for the amount' do
      expect(non_default_transaction.amount).to eq 1000
    end 
  end 
end 