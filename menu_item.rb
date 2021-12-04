class MenuItem
    attr_reader :price, :name # Getter

    def initialize(name, price)
        @name = name
        @price = price
    end 
end