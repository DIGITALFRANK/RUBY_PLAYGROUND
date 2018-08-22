
class Reptile 
    attr_accessor :species   #, :cold_blooded, :num_limbs
    def initialize(species, num_limbs)
        @species = species
        @num_limbs = num_limbs
        @cold_blooded = true
    end
    def check_limbs
        if @num_limbs == 4 || @num_limbs == 0
            puts @num_limbs
        else
            puts "this is probably not a reptile"
        end
    end
end