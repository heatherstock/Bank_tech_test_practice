require 'statement'

describe Statement do 
  subject(:statement) { described_class.new}

  context 'when statement is initialized' do
    it 'should have an empty transaction array' do 
      expect(statement.transaction).to eq []
    end 
  end 

  describe '#display' do 
    it 'returns banking history' do 
      expect(statement.display).to be_instance_of Array
    end 
  end

end