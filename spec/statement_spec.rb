require 'statement'

describe Statement do 
  subject(:statement) { described_class.new }
  let(:transaction) { double 'transaction' }

  context 'when statement is initialized' do
    it 'should have an empty transaction array' do 
      expect(statement.transactions).to eq []
    end 
  end 

  describe '#display' do 
    it 'returns banking history' do 
      
      expect(statement.display).to eq 'date || credit || debit || balance
      14/01/2012 || || 500.00 || 2500.00
      13/01/2012 || 2000.00 || || 3000.00
      10/01/2012 || 1000.00 || || 1000.00'
    end 
  end

  describe '#update' do 
    it 'pushes to transaction array' do 
      statement.update(transaction)
      expect(statement.transactions).to eq [transaction]
    end 
  end 

end