
class CashRegister

    attr_accessor :total, :discount, :previous_transaction, :items

    def initialize(store_discount=0)
        @total = 0
        @discount = store_discount
        @items = []
    end
    
    def total
        @total
    end

    def add_item(title, price, quantity=1)
        self.total += price * quantity
        self.previous_transaction = price * quantity
    end

    def apply_discount
        @total = self.total * discount
    end

    def items
    end

    def void_last_transaction
    end

end