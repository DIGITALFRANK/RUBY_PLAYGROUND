
# input_array = ARGV
# puts input_array.length
# puts input_array.to_s
# puts input_array


first_arg, *the_rest = ARGV
puts first_arg
puts the_rest.to_s
the_rest = the_rest.to_s

def test(str1, str2, str3, str4) 
    puts "#{str1} yea #{str2} oh #{str3} aha! #{str4}"
end



$array = [1, 2, 3, 4, 5]

def testing_1_2(arr)
    for i in arr
        if i == 3 || 2 || 5 
            puts i 
        else
            puts "this ain't what I wanna grab"
        end
    end
end


testing_1_2($array)