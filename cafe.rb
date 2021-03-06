require_relative './menu' # So we can call Menu.new
require_relative './order'

class Cafe
    attr_reader :name, :menu
    
    def initialize(name, menu_items)
        @name = name
        @menu = Menu.new
        populate_menu(menu_items)
        @order = Order.new
    end

    def populate_menu(menu_items)
        menu_items.each do |name, price|
            @menu.add_item(name, price)
        end
    end

    def add_to_order(item, quantity)
        @order.add_item(item, quantity)
    end

    def get_order
        @order
    end

    def welcome
        puts
        puts "*** Welcome to #{@name}! ***"
        puts
    end

    def print_menu
        @menu.display
    end

    def order_total
        total = 0 
        @order.get_items.each do |item, quantity|
            total += @menu.get_price(item) * quantity
        end
        return total 
    end

    def print_order
        if @order.get_items.empty? == false # @order on its own doesn't work?
            @order.display # Prints our menu_items and price
            # String formatting to 2 decimal places - where % is our string
            puts "TOTAL:    $%.2f" % order_total 
        else
            puts "Thank you for coming!"
        end
        puts 
    end
end