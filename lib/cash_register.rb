require 'pry'
class CashRegister

    attr_accessor :total, :discount
    attr_reader :items

    
    @@items = []

    def initialize(discount = 0)
        @total = 0
        @discount = discount
    end
    
    def add_item(title, price, quantity = 1)
        self.total = total + (price * quantity)
        binding.pry
        @@items << title
    end

    def apply_discount
       if @discount == 0
            self.total
            "There is no discount to apply."
       elsif @discount > 0
           self.total = total - ((@discount.to_f / 100.to_f) * total)
           "After the discount, the total comes to $#{self.total.to_i}."
       end  
    end

    def self.items
        @@items
    end

end



