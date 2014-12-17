class CashRegister
  def initialize
    @balance = 0
  end

  def purchase(amount)
    @balance = (@balance.to_f + amount).round(2)
  end

  def total
    @balance
  end

  def pay(amount)
    @balance = (@balance.to_f - amount).round(2)
  end
end
