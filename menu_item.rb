class MenuItem
    attr_reader :price, :name # Getter

    def initialize(name, price)
        @name = name
        @price = price
    end
    
    def to_s        # to_s override to display our display method (in menu) correctly
        "#{@name}"+" "*(10 - @name.length)+" ...   $%.2f" % @price # Multiply space characters * 10, minus length of @name
    end 
end