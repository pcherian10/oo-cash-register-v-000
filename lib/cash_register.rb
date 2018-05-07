class CashRegister
attr_accessor :total, :discount, :quantity, :title, :price, :last_transaction

  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item (title, price, quantity = 1)
    @quantity = quantity
    @price = price
    @title = title
    @total = @total + @quantity*@price
    @quantity.times {|item| @items << @title}
    @last_transaction = @quantity * @price
  end

  def apply_discount
    if(@discount == 0)
      "There is no discount to apply."
    else
      @total = @total - @discount.to_f/100*@total.to_f
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
     @total = @total - @last_transaction
  end

end
