class VendingMachine
  attr_accessor :total

  def initialize
    @total = 0
  end

  def insert(money)
    @total += money
  end
end
