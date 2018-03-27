require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new }
  let(:trans) { described_class.new(1000, Time.new(2018), 'credit', 'balance') }

  context 'when a transaction is initialized' do
    it 'should take an argument for the amount' do
      expect(trans.amount).to eq 1000
    end

    it 'should take an argument for the date' do
      expect(trans.date).to eq '01/01/2018'
    end

    it 'should take an argument for the type of transaction' do
      expect(trans.type).to eq 'credit'
    end

    it 'should take an argument of the current balance after the transaction' do
      expect(trans.balance).to eq 'balance'
    end
  end
end
