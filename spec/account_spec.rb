require 'account'

describe Account do
  subject(:account) { described_class.new }

  context 'when bank is initialized' do 
    it 'should have a starting balance of zero' do
      expect(account.balance).to eq 0
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
end
