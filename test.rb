# puts "hello world"
# print "hello again world"
# p "hello hello hello world"

# # must use double quotes for string interpolation in Ruby
# puts "Hens #{25 + 30 / 6}"
# puts "Hi" * 3

# puts "hello".object_id
# puts "hello".object_id

# #symbols
# puts :philip.object_id
# puts :philip.object_id



# options = { #using symbols
#     font_size: 10, 
#     font_family: "Arial" 
# }

# optionstwo = { #using symbols
#     font_size: 10, 
#     font_family: "Arial" 
# }

# puts optionstwo[:font_size] = 20
# puts options[:font_size]





# puts "Enter some stuff"
# input = gets 
# puts input






# puts "Welcome to the persnoality game! Please type your first name"
# name_input = gets.chomp
# puts "Hello #{name_input}, what is your favorite color?"
# color_input = gets.chomp
# puts "#{color_input} really brings out your eyes, what is your favorite cartoon?"
# cartoon_input = gets.chomp
# puts "No way! #{cartoon_input} is my faborite cartoon too!  Ok, last question: if you could have a super power, what would it be?"
# power_input = gets.chomp
# puts "Well thank you #{name_input}, you sound like you would make a great super hero, using #{power_input} for good!"









###################### CONDITIONALS IN RUBY ########################

# false == false
# 1 == "1"

# name = "Boss"
# life = "RichForever"

# if name == "David" && life == "YOLO"
#     puts "Hello David, YOLO"
# elsif name == "Boss" && life == "RichForever"
#     puts "hello #{name}, you the man cus you're #{life}"
# else
# end



#switch case in Ruby (CASE STATEMENTS)

# age = 5
# case age
# when 0 .. 3
#     puts "baby"
# when 4 .. 9
#     puts "toddler"
# when 10 .. 17
#     puts "teen"
# when 18 .. 65
#     puts "adult"
# when 65 .. 1000
#     puts "elderly"
# else
#     puts "human"
# end




# x = 1 
# unless x >= 2
#     puts "puts x is less than 2"
# else
#     puts " x is greater than 2"
# end 



#FizzBuzz game conditional

# puts "Pick a number between 1 and 100"
# number = gets.chomp.to_i

# if number.is_a? Integer == false
#     puts "A DAMN NUMBER"
#     number = gets.chomp.to_i
# elsif number < 0 || number > 100
#     puts "A NUMBER BETWEEN 0 AND 100!"
#     number = gets.chomp.to_i
# elsif number % 5 == 0 && number % 3 == 0
#     puts "FizzBuzz!!"
# elsif number % 3 == 0
#     puts "Buzz!"
# elsif number % 5 == 0
#     puts "Fizz!"
# else
#     puts "Whomp-Whomp!"
# end

#keep working on this and get this fully fully functional!








######################## LOOPS IN RUBY #######################

################ while loops 

# x = 0
# (puts x; x+=1) while x < 10

### or 

# x = 0
# while x < 10 do
#     puts x
#     x +=1
# end

##### or use until

# num = 10
# i = 0
# until i > num do
#     puts ("Inside the loop i = #{i}")
#     i += 1
# end






################ for loops

# the_count = [1, 2, 3, 4, 5, 6]

# for number in the_count 
#     puts "this is cound #{number}"
# end



#looping through multiple arrays

# people = [["Jason", "Maria", "Justin"], ["Red", "Blue", "Green"], ["Limp Bizkit", "3 Doors Down", "Papa Roach"]]
# names = people[0]
# colors = people[1]
# bands = people[2]

# i = 0
# names.each do 
#     puts "#{names[i]}'s favorite color is #{colors[i]}, and he/she loves #{bands[i]}"
#     i += 1
# end

# i = 0
# for people.each do |arr|
#     {|index| puts "#{arr[index][i]}'s favorite color is #{arr[index][i]}, and he/she loves #{arr[index][i]}"}
# end



### Array .each method 

# arr = ['david', 1, 5, "mike"]

# arr.each do |elem|
#     puts elem
# end

# Drop values of an array

# a = [1, 2, 3, 4, 5, 6, 7, 8]
# puts a.drop_while {|i| i < 4}







#######################looping through nested arrays using until

#Write a command line app that takes in a variable with arrays nested as values inside another array. Print out sentences for each of them.
# people = [["Jason", "Maria", "Justin"], ["Red", "Blue", "Green"], ["Limp Bizkit", "3 Doors Down", "Papa Roach"]]

# #The sentence will look like "Jason's favorite color is Red, and he loves Limp Bizkit"

# i = 0
# until i == people.length do
# 	puts ("#{people[0][i]}'s favorite color is #{people[1][i]} and they love #{people[2][i]}")
# 	i += 1
# end















######################################## FUNCTIONS IN RUBY

## functions without paramaters
def my_function 
    puts "This is my code block"
    puts ""
end

## functions with one parameter
def my_new_funciton (words)
    puts words
end

## functions with multiple parameters
def my_latest_function (words, feelings)
    puts "I speak #{words}.  I ooze #{feelings}"
end

#####  ruby functins need all the paramaters of the function in order to work
















