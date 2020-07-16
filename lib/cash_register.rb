class CashRegister
  attr_accessor :discount
  attr_accessor :total
  attr_accessor :item
  @@array = []
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity=1)
    @quantity = quantity
    @title = title
    @total += price * quantity
    @total
  end
  
  def apply_discount
    @total -= @discount
    "After the discount, the total comes to $#{@total}."
  end
  
  def items
    @@array << self.@title
    @@array
  end
end
