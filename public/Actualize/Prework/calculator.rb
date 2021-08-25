class Calculator

    def double(number)
    return number * number
    end

    def multiply(mult1,mult2)
        return mult1 * mult2
    end

    def divide(divis1,divis2)
        return (divis1 / divis2)
    end

    def average(avg1,avg2,avg3)
        return (avg1 + avg2 + avg3) / 3
    end



end

calc = Calculator.new
# puts calc.double(5)
puts calc.multiply(50,30)
puts calc.divide(50,30)
puts calc.average(50,30,40)

# class StringModifier

#     def make_question(word)
#     return word+"?"
#     end

# end

# mod = StringModifier.new
# puts mod.make_question("hello")

