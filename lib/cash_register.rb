class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = nil
  end

  def add_item(item, price, quantity=1)
    @last_transaction = price * quantity
    @total += @last_transaction
    quantity.times { @items << item }
  end

  def apply_discount
    if @discount != 0
      @total = @total * (100 - @discount) / 100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_transaction
  end
  
end
