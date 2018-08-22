require 'httparty'

class Weather_man
    attr_accessor :response, :respons_obj

    def initialize(state, city)
        @response = HTTParty.get("https://api.wunderground.com/api/023b537b0ab0fdea/conditions/q/#{state}/#{city}.json")
        @response_obj = JSON.parse(@response.body)
    end

    def show_time_weather(city, state)
        puts "#{city}, #{state}, #{@response_obj["current_observation"]["local_time_rfc822"]}"
        puts "Temperature: #{@response_obj["current_observation"]["temperature_string"]}"
        puts "Humidity: #{@response_obj["current_observation"]["relative_humidity"]}"
        puts "Winds: #{@response_obj["current_observation"]["wind_string"]}"
    end
end


new_york = Weather_man.new("NY", "New_York")
new_york.show_time_weather("New_York", "NY")


$check_for_city

def city_check
    puts ">"
    puts ">"
    puts ">"
    puts "Check the time & weather in your city, tell us your city and state"
    puts "(>>> please use underscores for spaces in city names, no comma after the city, two letter state)"
    $check_for_city = gets.chomp
end

city_check



############ fix the part below   ---  it's giving an error 

$check_for_city.split(' ')

if $check_for_city[0].respond_to?(:to_s) && $check_for_city[1].respond_to?(:to_s)
    the_city = $check_for_city[0]
    the_state = $check_for_city[1]
    city = Weather_man.new(the_state, the_city)
    city.show_time_weather(the_city, the_state)
    city_check
else
    puts "PLEASE ENTER ACCURATE INFORMATION"
    $check_for_city = gets.chomp
    city_check
end



ARGV = []

if ARGV[0].respond_to?(:to_s) && ARGV[1].respond_to?(:to_s)
    the_city = ARGV[0]
    the_state = ARGV[1]
    city = Weather_man.new(the_state, the_city)
    city.show_time_weather(the_city, the_state)

    city_check
else
    puts "PLEASE ENTER ACCURATE INFORMATION"
    city_check
end