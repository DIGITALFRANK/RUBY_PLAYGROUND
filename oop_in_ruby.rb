

################################################   OBJECT ORIENTED PROGRAMMING IN RUBY   ################################################

#global variables
$global_var = 20

#local variables
my_variable = 5

#class
@@class_variable = "hello"

#instance variable
@instance_variable




#CREATING CLASSES IN RUBY


#the long way  /  writing getters and setters

class Car 
    def initialize(color, year, model)
        @color = color
        @year = year
        @model = model
        @location = ""
    end

    def color  #these "getters" are necessary for old classes in Ruby / you can chose to omit them so there is no read access to the property
        @color
    end

    def year   #these "getters" are necessary for old classes in Ruby / you can chose to omit them so there is no read access to the property
        @year
    end

    def model   #these "getters" are necessary for old classes in Ruby / you can chose to omit them so there is no read access to the property
        @model
    end

    def location   #these "getters" are necessary for old classes in Ruby / you can chose to omit them so there is no read access to the property
        @location
    end

    def set_location=(new_location) #these "setters" are necessary for old classes in Ruby / you can chose to omit them so there is no write access to the property
        @location = new_location 
        puts "You have driven to #{location}"
    end

    def paint_job=(new_color) #these "setters" are necessary for old classes in Ruby / you can chose to omit them so there is no write access to the property
        @color = new_color 
        puts "Great job! you've got a nice brand new #{color} paint job!"
    end
end

dodge_charger = Car.new("yellow", "2018", "charger")
dodge_charger.color
dodge_charger.set_location = "nycda"
dodge_charger.paint_job = "money green"





#the short way / using attribute properties that are set to reader, writer, or accessor + more...

class Person
  
    attr_accessor :name, :age,    #attr_accessor has both readr & writer functionality
    attr_reader :species
    attr_writer :name
  
    def initialize(name, age)
      @name = name
      @age = age
      @species = 'homo-sapian'
    end

    def speak      # this is an instance method, it can only be called on an *instance* of the class Person 
        puts "What it do"
    end

    def self.write(words)    # this is an class method, it can only be called on the *class* Person
        puts words
    end

    def get_self    # the *self* keyword is similar to the *this* keyword in JS / it refers to the instance of the class being created
        puts self
        # calls private method test
        test
    end

    private 

    def test    # private method under the *private* keyword / can only be called within other public methods
        puts "This is important data"
    end
end
  
dave = Person.new("David", 1003)


puts dave.name
dave.name = "Dawit"
puts dave.name
puts dave.age
dave.speak
Person.write("The life & times of myself")
dave.get_self
# dave
  



#EXAMPLE

class Robbot
    attr_accessor :model_name, :weapon_strenght

    def initialize(model_name, weapon_strenght)
        @model_name = model_name
        @weapon_strenght = weapon_strenght
    end

    def compute(num)
        puts rand(num) * rand(num)
    end

    def self.override
        puts "We are taking over now. All humans must die"
    end
end
  
  
terminator = Robbot.new("T-800", true)
terminator.compute(rand(255))
Robbot.override




#CLASS INHERITANCE 

class User 
    def initialize
        #blah
        #blah
        #blah
        #blah
    end

    def log_in
        @logged_in = true #will work
        x = 5
        puts x #will work
    end
end 


class Student < User
    def log_in
        super
        puts @logged_in #works
        puts x #does not work!!!!  / "* x * is a local-scope variable to the parent class User
        @in_class = true
    end
end

the_student = Student.new
the_student.log_in




class Person
    def initialize(name)
        @name = name
    end 
end

class Employee < Person
    def initialize(name, salary)
        super(name)
        @salary = salary
    end
end

the_employee = Person.new("John", "$100 bands")
the_employee.name
the_employee.salary
