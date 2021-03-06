require_relative './menu_item'

class Menu
    attr_reader :menu_items
    
    def initialize
        @menu_items = []
    end 
    
    def add_item(name, price)
        menu_item = MenuItem.new(name, price)
        @menu_items << menu_item
    end

    def get_price(name)
        # Finds the first instance of our menu_item when it matches name
        item = @menu_items.find { |menu_item| menu_item.name == name }
        item.price # Returns initialised price from menu_item
    end 

    def get_items
        return @menu_items 
    end

    def display
        puts "-----------------------"
        puts "|         Menu        |"
        puts "-----------------------"
        @menu_items.each { |item| puts item }
        # Return nil so we don't implicitly return the last item in our above loop when trying to print menu
        puts "-----------------------"
        return nil 
    end

    def validate_item(name)
        @menu_items.each do |item|
            if item.name == name
                return name
            end
        end
        return nil # Return nil if no match found
    end
end