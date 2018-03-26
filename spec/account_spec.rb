require 'account'

describe Account do
  subject(:account) { described_class.new }
  let(:non_default_account) { described_class.new(2000, statement)}
  let(:statement) { double('statement') }

  context 'when bank is initialized' do 
    it 'should have a default starting balance of zero' do
      expect(account.balance).to eq Account::DEFAULT_BALANCE
    end

    it 'should take an argument to set the starting balance' do
      expect(non_default_account.balance).to eq 2000
    end
  end


  describe '#deposit' do
    it 'increases the account balance' do
      expect { account.deposit(1000) }.to change { account.balance }.by 1000
    end
  end 

  describe '#withdraw' do
    it 'decreases the account balance' do
      expect { account.withdraw(500) }.to change { account.balance }.by -500
    end 
  end 

  describe '#display_statement' do 
    it 'shows balance and deposit/withdrawal history on the screen' do 
      expect(statement).to receive(:display)
      non_default_account.display_statement
    end 
  end 
end
