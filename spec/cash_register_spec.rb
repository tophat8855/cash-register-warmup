require 'cash_register'

describe CashRegister do
  describe "initialization" do
    it 'takes an initial amount' do
      cash_register = CashRegister.new(74.32)

      expect(cash_register.total).to eq(74.32)
    end
  end

  describe "#total" do
    it 'starts at 0' do
      cash_register = CashRegister.new
      total = cash_register.total
      expect(total).to eq(0)
    end
  end

  describe "#purchase" do
    it 'adds money to register when a purchase is made' do
      cash_register = CashRegister.new
      total = cash_register.purchase(25.99)
      expect(total).to eq(25.99)
    end
  end

  describe '#pay' do
    it 'subtracts money from total when it pays out' do
      cash_register = CashRegister.new
      cash_register.purchase(25.99)
      total = cash_register.pay(15.99)
      expect(total).to eq(10.00)
    end
  end
end
