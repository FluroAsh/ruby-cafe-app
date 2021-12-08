class Order
    attr_reader :order_items
    
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

    def display
        # print ">> DEBUG: #{@order_items}, #{@order_items.length}, #{@order_items.empty?}" # Is printing an empty hash, so 
        puts
        puts "Thank-you! Here is your order: "
        puts "-------------------------------"
        @order_items.each { |item, qty| puts "x#{qty} #{item}"}
        puts
    end
end