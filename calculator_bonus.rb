class Calculator
    def initialize(first, second)
        @first = first
        @second = second
    end
    def add
        @first + @second        
    end
    def subtract
        @first - @second
    end
end

calc = Calculator.new(20,11)
puts calc.add
puts calc.subtract