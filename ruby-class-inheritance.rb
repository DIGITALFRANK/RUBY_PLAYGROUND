
#Lets first talk about super simple inheritance
#When you use the < , your child class inherits all the methods of the parent class. This includes any attr_accessor methods! Remember thats just short hand for writing out the getter and setter methods

# class Animal
#   attr_accessor :species
  
#   def initialize(species)
#     puts "Inside Animal Constructor"
#     @species = species
#   end
  
#   def talk
#     puts "I am speaking and Birds can speak"
#   end
  
#   def canbe_called_in_child
#     puts "This method was inherited"
#   end
  
# end

# class Bird < Animal
#   attr_accessor :wings
  
#   def initialize(wings)
#     puts 'Inside Bird Constructor'
#     @wings = wings
#   end
# end

# my_bird = Bird.new(4)
# my_bird.talk
# my_bird.canbe_called_in_child
# my_bird.species = "dove"
# puts my_bird.species






#Three main ways to call super 
#super
#super()
#super(a,b,c,...)






# 2nd EXAMPLE
#Inheriting not only the methods but the Constructor (initialize)

#What if I wanted my admins to inherit properties of a user. For now I dont want to have my own properties just yet ONLY the user properties

# class User
#     attr_accessor :name, :logged_in
    
#     def initialize(name,logged_in)
#       puts "Inside User Constructor"
#       @name = name
#       @logged_in = logged_in
#     end
    
#     def superclass_method
#       puts "Inside superclass method"
#     end
    
#   end
  
  
#   class Admin < User
  
    # def initialize(name,logged_in)
    #   puts "Alternative admin initialize"
    #   super(name,logged_in)
    # end
      
      #OR
      # passing in default values, these values can be changed later on in your code
    
    # def initialize
    #   puts "Inside admin initialize"
    #   super("David", true)
    # end
    
      #OR
      # passing in just 1 or some default values, these values can be changed later on in your code
    
    # def initialize(name)
    #   puts "Inside admin initialize"
    #   super(name, true)
    # end
    
    #OR
    
      # passing in additional instance variables, these variables have to be defined in the child class
    
    # def initialize(name, logged_in, teaches)
    #   puts "Inside admin initialize"
    #   super("David", true)
    #   @teaches = teaches
    # end
    
  #   #OR
  
  #   #This simply just copies the constructor of the superclass. In this case and the case above, the variable names are wild card but you would want to keep them consistent for best practice
  
#     def initialize(whatever,whatevertwo)
#         super
#     end
    
#   end
  
  # my_admin = Admin.new
  
  # #Alternative
#   my_admin = Admin.new('David',true)
  
#   puts my_admin
#   my_admin.superclass_method
#   puts my_admin.name
#   puts my_admin.logged_in
  
  


  
  # 3rd EXAMPLE
  #What if we want to have properties of the superclass but also have our own
  
  #Our bird wants to inherit the property of species from our animal class but also have a property of wings that only belong to birds and not all animals
  
#   class Animal
#     attr_accessor :species
    
#     def initialize(species)
#       puts "Inside Animal Constructor"
#       @species = species
#     end
    
#     def talk
#       puts "I am speaking and Birds can speak"
#     end
    
#     def canbe_called_in_child
#       puts "This method was inherited"
#     end
    
#   end
  
#   class Bird < Animal
#     attr_accessor :wings
    
    # def initialize(wings)
    #   super('Birds')
    #   @wings = wings
    # end
    
    # #OR
    
    # def initialize(species,wings)
    #   super(species)
    #   @wings = wings
    # end
    
    #OR 
    
    #When you call super without arguments, it just repeats the block again in the super constructor. In this case it takes wings and passes it up to animal as if wings is species, but also creates a new property called wings for our bird. So we end up passing wings as the species for the super constructor but also giving ourself our own property of wings  

#     def initialize(wings)
#       super
#       @wings = wings
#     end
    
#   end
  
  # tweetie = Bird.new(4)
  # puts tweetie.species
  # puts tweetie.wings
  # tweetiealternative = Bird.new('Bird', 4)
  # puts tweetiealternative.species
  
  

  
  
  
 # 4th EXAMPLE 
  #Passing down properties with default values. Lets say we wanted all the contractors to have a tax code of 1099.
  
  #we dont want to always put '1099' when we call a .new when we create new contractors becuase its always the same. 
  
  
#   class Employee 
#     attr_accessor :name, :age, :phone_number, :taxcode
    
#     def initialize(name,age,phone_number,taxcode)
#       @name = name
#       @age = age
#       @phone_number = phone_number
#       @taxcode = taxcode
#     end
    
#     def superclass_method
#       puts "this is the superclass method"
#     end
#   end
  

#   class Contractor < Employee  
  #   #we dont want to add taxcode to the arguments list of the initialize becuase we know that its always going to be 1099 
  #   #we can see here we are simply just passing a value into our super constructor. Again the name is a wild card but we want to call it what we mean.
    
#     def initialize(name,age,phone_number)
#       taxcode = 1099
#       super(name,age,phone_number, taxcode)
#       #OR pass it straight in.
#       #super(name,age,phone_number, 1099)
#     end
    
#   end
  
#   david = Contractor.new( 'David', 10, 9177777777 )
#   puts david.taxcode
  
  





  
  # 5th EXAMPLE
  #3 levels deep 
  #Bonus override of methods from superclasses
  
  
  class Animal 
    attr_accessor :glands, :temperture
    
    def initialize(glands, temperture)
      puts "In animal constructor"
      @glands = glands
      @temperture = temperture
    end
    
    def animal_method
      "This is a method in the animal class"
    end
  end
  

  class Mammal < Animal
    
    attr_accessor :hair_present
    
    def initialize
      puts "In Mammal constructor"
      super('mammary-glands', 'warm')
      @hair_present = true;
    end
  end
  

  class Cat < Mammal
    def initialize(name,age)

        attr_accessor :name, :age

      #In this case we know that the mammal constructor does not take any arguments. We dont want a COPY of the constructor by calling just super like we did before. We want to call super but not pass it anything so it matches the superclasses constructor. This also allows us to have our own arguents in our cat constructor
      super()
      @name = name
      @age = age
    end
    
    
    def animal_method
      puts 'I overrided the super method'
    end
  end
    
chucky = Cat.new('chucky', 'yellow')
puts chucky.animal_method
puts chucky.glands
puts chucky.hair_presenet
  
  
puts chucky.name
puts chucky.age

  
  
  
  
  
  