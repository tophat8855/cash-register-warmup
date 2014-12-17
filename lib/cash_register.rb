class CashRegister
  attr_reader :total

  def initialize(total = 0)
    @total = total
  end

  def purchase(amount)
    @total = (@total + amount).round(2)
  end

  def pay(amount)
    @total = (@total - amount).round(2)
  end
end
