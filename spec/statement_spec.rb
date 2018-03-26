require 'statement'

describe Statement do 
  subject(:statement) { described_class.new}

  describe '#display' do 
    it 'returns banking history' do 
      expect(statement.display).to eq 'test statement string'
    end 
  end

end