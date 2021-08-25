class Dog

    def name
        return "Fido"
        puts "The name method has been called"
        x = 1
        y = 2
        z = x + y 
        puts z
        # return "Fido"
    end

    def breed
        return "Damlmation"
    end

    def age
        return 3
    end
    
end

dog = Dog.new
puts dog.name