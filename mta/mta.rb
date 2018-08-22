
require './mta_structure.rb'




# this is the file we will run, it depends on the structure file, and is pretty much the MTA user face
# all the command line ARGV's have to be accessible to the user here
# use a user-first approach to engineering this page


def greeting
    puts "Hello, MTA rider! How can we help?"
    puts "please enter one of the following commands:"
    puts "lines / stops the_line / calculate Departing_Line Departing_Stop Arriving_Line Arriving_Stop"
    user_call, *user_args = gets.chomp
    user_args.to_s
    # user_args.split(" ")
    # puts user_input

    if user_call == lines
        show_lines()
    elsif user_call == stops
        show_stops(user_args[0])
    elsif user_call == calculate
        if user_args.length < 4
            puts 'please enter "Departing_Line Departing_Stop Arriving_Line Arriving_Stop"'
            puts 'or enter "exit" to return to the home screen' 
            user_input = gets.chomp
            if user_input == "exit"
                greeting()
            end 
            user_input = user_input.split(" ")
            calculate(user_input[0], user_input[1], user_input[2], user_input[3])
        else
        calculate(user_args[0], user_args[1], user_args[2], user_args[3])
        end
    else
    
    end
end



call, *the_args = ARGV
puts call
puts the_args.to_s



if call == lines
    show_lines()
elsif call == stops
    #run function
elsif call == calculate
    #run function
else

end



greeting()



# user_call()
# user_call(user_args)

# call()
# call(the_args)
