
# lines:  
# N = ["Times Square", "34th Street", "28th Street", "23rd Street", "Union Square", "8th St-NYU"]
# L = ["8th Ave", "6th Ave", "Union Square", "3rd Ave", "1st Ave"]
# 6 = ["Grand Central", "33rd Street", "28th Street", "23rd Street", "Union Square", "Astor Place"]

# THE ONLY INTERSECTION POINT IS UNION SQUARE !!!





# STRUCTURE
# there should be an MTA hash, which we will populate using a Subway_line class that creates a Subway_line object named itself (which will serve as its key within MTA hash, as the class will insert its generated object into the MTA hash)

# the MTA hash will also have a :lines key, which will contain an array populated by each line the Subway_line class creates (at creation, the Subway_line class will also push the object into this array, named itself)

# EACH object the Subway class creates (line) will have the following attributes
    # @line_name = defines the name of the line [which will be used to name the object as it's pushed into it's various places]
    # @stops = [] an array of all of the line's stops (we will use index numbers within the calculate method to generate number of stops within all possible trips, remember that the only instersection stop is UNION SQUARE for all lines)
    # @
    #

# EACH object the Subway class creates (line) will have the following methods
    #
    #
    #
    # def calculate (calculation using stops [] arrays indexes for 1 or 2 lines
            # must return total number of stops)
            #### the program must notify the user if all the paramaters of the calculate method are not passed in
                #(the user inputs are the arguments to the method)
            ######### puts 'please enter "Departing_Line Departing_Stop Arriving_Line Arriving_Stop"'
            ######### puts 'or enter "exit" to return to the home screen' 
            ######### user_input = gets.chomp
            ######### puts user_input


# Features: (ARGV)
# ARGV = [lines, stops(line), calculate => returns prompt "please enter...(follow error's style)", calculate(line_start, station_start, line_end, station_end), ]





#might just turn this to an array
# mta = {
#     :lines => []

# }

$mta = []


class Subway_line
    attr_accessor :line_name, :stops 

    def initialize(line_name, stops)
        @line_name = line_name
        @stops = stops
    end
end


line_N = Subway_line.new("N", ["Times Square", "34th Street", "28th Street", "23rd Street", "Union Square", "8th St-NYU"])
$mta.push(line_N)

line_L = Subway_line.new("L", ["8th Ave", "6th Ave", "Union Square", "3rd Ave", "1st Ave"])
$mta.push(line_L)

line_6 = Subway_line.new("6", ["Grand Central", "33rd Street", "28th Street", "23rd Street", "Union Square", "Astor Place"])
$mta.push(line_6)



def show_lines
    i = 0
    while i < $mta.length
        puts $mta[i].line_name
        i+=1
    end
end


def show_stops(line)
    i = 0
    while i < $mta.length
        # if line in an integer => line to string
        if $mta[i].line_name == line
            puts $mta[i].stops
            return
        elsif i == $mta.length - 1
            puts "Sorry! that line does not exist"
        else
        i+=1
        end
    end
end

# FINISH CALCULATE METHOD   
def calculate(line_start, station_start, line_end, station_end)

    for i in $mta
        if line_start == $mta[i].line_name
            line = $mta[i]

        end
    end 



    if line_start == line_end
        distance = line_end.stops.index(line_end) - line_end.stops.index("Union Square")#make positive integer (.abs)? [means to_absolute]
        puts "your trip is #{distance} stops long. Please ride the MTA safely!"
        return true 
    elsif line_start != line_end
        b4_trf = (line_start.stops.index("Union Square") - line_start.stops.index(station_start))#make positive integer (.abs)?
        aft_trf = line_end.stops.index(line_end) - line_end.stops.index("Union Square")#make positive integer (.abs)?
        distance = b4_trf + aft_trf
        puts "your trip is #{distance} stops long, with a transfer @ Union Square.  Pleae ride the MTA safely!"
    elsif line_start || station_start || line_end || station_end == nil
        puts 'please enter "Departing_Line Departing_Stop Arriving_Line Arriving_Stop"'
        puts 'or enter "exit" to return to the home screen' 
        user_input = gets.chomp
        user_input = user_input.split(" ")
        calculate(user_input[0], user_input[1], user_input[2], user_input[3])
    else

    end
end


# puts mta[0].line_name
# puts mta[1].line_name
# puts mta[2].line_name
# puts mta.to_s


# show_lines()
# show_stops("L")

calculate("N", "Times Square", "N", "8th St-NYU")


