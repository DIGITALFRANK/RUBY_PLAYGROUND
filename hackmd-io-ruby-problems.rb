
################################################  https://hackmd.io/s/ryuXvcNWf   Ruby Excercises  ###################################################


#1 #make an array:
# arr_thing = [1,2, "three"]
#2 access an index:
# arr_thing[0]
#3
# arr_thing.push("hi")
# arr_thing << "fuck you"
#4
# arr_thing.delete(1)
# arr_thing.delete_at(0)
# arr_thing - [2]
# arr_thing.slice(index, how many do we want to delete)
#5 update an index of an array
# arr_thing[1] = "four"
# arr_thing[arr_thing.index(1)] = "whatever"
#6 create an object hash:
# employee = {
#  "name" => "Dude",
#  "email" => "thedude@dudemail"
# }
#7 delete a single item from hass
##print employee["name"]
#8 
# employee["last_name"] = "smith"
#print employee
#9 print out all the numbers from 1 to 10
# (1..10).each {|num| print num}
# 10.times do |x|
#     puts x
# end
#10
#print the names in an array 
# arr = [{"name" => "sam"}, {"name" =>"joe"}, {"name" => "mary"}]
# i = 0
# while i < arr.length do 
#   puts arr[i]["name"]
#   i += 1
# end

# arr.each do |obj|
#   puts obj["name"]
# end
#11
#if arr[0]["name"] == "sam" then ... print "it's sam" "it's not sam"
# if (arr[0]["name"] == "sam") then  print "it's sam" else print "it's not sam" end
#12 perform logic based on the value of a variable 
# conditon = false
# if conditon == true 
#   puts true
# else 
#   puts false
# end 
#13
# def merica (phrase)
#   print phrase + " only in America!"
# end

# merica("Bootcamps")
#14 get the maximum number from an array:
# num_arr = [95, -1000, 9, 2, 44, 87]
# puts num_arr.max
# or 
# array = [-100,10,1,200,-1000]
# def maxValue(array)
#     array.sort.last
# end
# puts maxValue(array)


#14 attempt two:
# max = num_arr[0]
# num_arr.each do |num|
#   if num > max 
#     max = num
#   end
# end
# print max

#15 make a conversion method that takes two arguments/ both are arrays.  combine the arrays.  the items in the first array will be keys, the values

# keys_array = ['maiya', 'okay', 'junker', 'franciscar']
# values_array  = ['bmw', 'nissan', 'chevette', 'macleren p1']
# cars = {}
# i = 0
# keys_array.each do |key|
#   cars[keys_array[i]] = values_array[i]
#   i += 1
# end
# puts cars

#16 make a guessing game to guess number 1 - 10
#make a random number 1-10
# answer = 1 + rand(10)
# # print answer
# puts 'guess a number 1-10'
# guess = gets.chomp.to_i
# attempts = 1
# while (guess != answer)  do
#   puts 'guess again'
#   guess = gets.chomp.to_i
#   attempts += 1
# end
# puts 'you won'
# print attempts

#17 a method that accepts 3 numbers arguments and returns and adds the first two numbers and multiplies the sum by the 3rd
# def do_math (x,y,z)
#   print (x+y)*z
# end

# do_math(1,1,3)

#18 a method that accepts two names and 
# def intro (person1, person2)
#   print "#{person1}, meet #{person2}"
# end

# intro("Bonnie", "Clyde")

#19 method thats takes any number of strings and prints them out in capital
# def shout (*strings)
#   strings.each do |string| 
#     puts string.upcase
#   end
# end

# shout("hello", "bye")

#20 Chopped:  write a method that takes an array as an argument and returns another array with an element removed;

# def chopped(arr)
#   arr.delete(arr[arr.length-1])
#   choppedArr = arr
# end

# chopped([1,2,3,4])

#21 our personal assingment:  learn 'splice' and 'splice' equivalents in ruby:

#slice an array:
# def slice(arr)
#   arrTwo = arr.slice(0, arr.length)
#   # print arrTwo
#   # print arr
#   print arrTwo == arr
#   arrTwo.push("hello")
#   print arrTwo
#   print arr
# end
# slice([1,2,3,4,5,6])

#22 a method that takes a single string as param and returns small or medium or big based on string's lenght

# def how_big (string)
#   result = string.length < 3? "small" : "medium"
#   result = string.length > 5? "big" : result
#   puts result
# end

# how_big("hi")

#23 a method that takes a weather conditon and temp, and returns a weather warning

# if rainy && cold => "better stay indide"
# if rainy && hot => "sounds like a gross condition"
# if sunny && hot => "maybe let's go swimming"
# if windy || cold => "bundle up"
# if windy && hot => "tornado warning"

# def weather_man (cond, temp)
#   warning = ""
  
#   if temp == "hot" 
#     if cond == "rainy"
#       warning = "sounds like a gross condition"
#     elsif cond == "sunny"
#       warning = "maybe let's go swimming"
#     elsif cond == "windy"
#       warning = "tornado warning"
#     end
#   elsif temp == "cold"
#     if cond == "rainy"
#       warning = "better stay indide"
#     elsif cond == "windy"
#       warning = "tornado warning"
#     end
#   end
#   if cond == "windy" || temp == "cold"
#     warning += ", bundle up"
#   end
#   puts warning
# end

# weather_man("windy", "cold")


# 24

# def meaning_of_life 
#   return 42
# end 

# def game
#   puts "do you want to know the meaning of life? y/n"
#   answer = gets.chomp
#   puts answer == "y"? meaning_of_life : "dissapoitment"
# end
  
# game()
  


# 25 

# string_info
# Define a method called string_info that takes a string as a parameter and returns a hash with the following key-value pairs:
# original: WHATEVER_THE_STRING_IS
# length: WHATEVER_THE_LENGTH_OF_THE_STRING_IS
# snaked: the string in all lower case with spaces replaced by underscores, example (for example “Cool Dude” would look like “cool_dude”)


# def string_info (string)
#   string_hash = {}
#   string_hash["original"] = string
#   string_hash["length"] = string.length
#   string_hash["snamked"] = string.sub(" ", "_")
#   puts string_hash
#   puts string
# end

# string_info("cool dude")




#Fives # Write a method called mult_five? which accepts one number argument. Returns true if the argument is divisible by five, otherwise return false.


# Use this method within a while loop. Within the while loop, ask the user to enter a number or enter the word “quit”. If the user enters a number, use mult_five? to check the number and let the user know if their number was divisible by five If the user entered quit, exit the program.

# Calculator
# Create a file called calculator.rb. Inside, define the following methods

# add: accept two numbers and return their sum
# subtract: accept two numbers and return their difference
# multiply: accept two numbers and return their product
# divide: accept two numbers and return their quotient (you can return 0 if the second number is 0)
# After you’ve defined these methods, write out the rest of this app:

# Ask the user what operation they want to perform
# Ask the user for the first value
# Ask the user for the second value
# Use the four methods you defined to calculate the answer
# Display the answer to the user
# Guessing Game Part Two
# Write a simple command line program in Ruby that chooses a random number asks the user to guess it.

# Allow the user to enter the range of numbers
# If the user guesses incorrectly, the program should tell them to guess again. The program should also say “higher!” or “lower!” to guide the user to their next guess.
# If they guess correctly, the program should congratulate them and tell them how many guesses it took them to get to the answer.
# Split this program into methods, where each method is in charge of a small task:

# computer_picks_number:
# prompts the user to enter in a range
# returns a random integer between 1 - range (inclusive)
# player_guess:
# prompts the user to enter a number
# outputs the current guess count
# returns the guessed integer
# evaluate_guess:
# returns true if the guess is correct
# otherwise:
# outputs a hint
# increments the guess count
# returns false
# give_hint:
# outputs either “guess Higher!” or “Guess Lower!”.
# Bonus: Also outputs “But, you’re warm!” if the user is within 10% of the range
# Super Bonus - EXTRA CHALLENGE YOLO :D
# Reinvent the Wheel (or rather, .each)
# Re-write the Ruby .each method (call it “my_each”). Your method should accept an array as a parameter. Use the yieldkeyword to let your program know when it should invoke the block you plan to pass it when the method is called.
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  






