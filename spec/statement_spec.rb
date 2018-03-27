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
      expect(STDOUT).to receive(:puts).with('date || credit || debit || balance')
      statement.display
    end
  end

  describe '#update' do 
    it 'pushes to transaction array' do 
      statement.update(transaction)
      expect(statement.transactions).to eq [transaction]
    end 
  end 

end