


# This is an infiite loop, it will break your browser windo or command line tool (you can interrupt with a Ctrl + c to stop it)

# loop do
#     puts "This will keep printing until you hit Ctrl + c"
# end



# this loop is useless, it breaks itslef after 1 interation

i = 0
loop do
  i += 1
  puts i
  break         # this will cause execution to exit the loop
end




# loops with break conditionals

i = 0
loop do
  i += 2
  puts i
  if i == 10
    break       # this will cause execution to exit the loop
  end
end
