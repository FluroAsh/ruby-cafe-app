class Order
    def initialize
        @order_items = Hash.new(0)
    end

    def add_item(name, quantity)
        # We can increment as we have created a new Hash 
        # with a default value of 0
        @order_items[name] += quantity
    end

    def get_items
        @order_items
    end
end