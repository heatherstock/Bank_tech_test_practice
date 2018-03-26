require 'account'

describe Account do
  subject(:account) { described_class.new }

  context 'when bank is initialized' do 
    it "should have a starting balance of zero" do
      expect(account.balance).to eq 0
    end
  end
end
