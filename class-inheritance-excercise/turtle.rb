require "./reptile.rb"

class Turtle < Reptile
    attr_accessor :name, :age
    def initialize(species, num_limps, name, age)
        super(species, num_limps)
        @name = name
        @age = age
    end
    def age!  # using the "bang" (!) signifies that you are modifying an original value 
        @age += 1
        return @age
    end
    def swim
        puts "I love the water"
    end 
    def fun_fact
        fun_facts = ["Turtles also have a lower shell called a ‘plastron’.", "Turtles have existed for around 215 million years", "The largest turtle is the leatherback sea turtle, it can weigh over 900 kg! (2000 lb)", "Many turtle species are endangered.", "Sea turtles have special glands which help remove salt from the water they drink."]
        puts fun_facts[0 + rand(fun_facts.length)]
    end
end

george = Turtle.new("Cheloniidae", 4, "George", 12)
george.fun_fact