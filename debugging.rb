#We can take a look at a piece of code that generates a exception(error)

# values = [42, 'a', 'r', 9, 5, 10022, 8.7, "sharon", "Libya", "Mars", "12", 98, rand, {:dog=>'cat'}, 100, nil, 200.0000, 680, 3.14, "Steve", 78, "Argo"].shuffle


# while values.length > 0
#   a = values.pop
#   b = values.pop
#   a + b
# end  


#But how could we execute this block of code, but also not stop it from crashing from the first error that it gets?

# values = [42, 'a', 'r', 9, 5, 10022, 8.7, "sharon", "Libya", "Mars", "12", 98, rand + rand, {:dog=>'cat'}, 100, nil, 200.0000, Object, 680, 3.14, "Steve", 78, "Argo"].shuffle

# while values.length > 0
#   a = values.pop
#   b = values.pop
  
#   #exception handling
#   begin
#     a + b
#   rescue
#     a.to_i 
#     b.to_i
#   else
#     puts "a + b is #{a + b}"
#   end
  
# end  


#We can also be specific with the type of error we want to catch. 
#Lets take a look at two pieces of code.

# def my_method(paramone,paramtwo)
#     puts "stuff"
# end

# my_method('1')


#Now handling the exception

# def my_method(paramone,paramtwo)
#     puts "stuff"
# end

# begin 
#   my_method('1')
# rescue ArgumentError
#   puts "Wrong number of args ya dingus"
# end

# #Or capture the error type

# begin
#   my_method('1')
# rescue ArgumentError
#   puts "Wrong number of args ya dingus"
# end

#You may also see this syntax which is the default functionality for a rescue without any specific error specified, becuase standard error encapsulates all our common errors
#rescue StandardError=>e


#Forcing exceptions
# begin
#   retries = 0
#   raise "I want to force my program to stop" 
#   #unless retries == 0
# end


#Combining it all 
# begin
#   retries = 1
#   raise "I want to force my program to stop" unless retries == 0
# rescue
#   puts "I have been rescued"
#   puts "blah"
# end


#Exercise
#Lets write a method 










# USING PRY

# Pry Cheat Sheet
# - [Youtube Tutorial 2013](https://www.youtube.com/watch?v=D9j_Mf91M0I)
# Command Line
# - `pry -r ./config/app_init_file.rb` - load your app into a pry session (look at the file loaded by config.ru)
# - `pry -r ./config/environment.rb` - load your rails into a pry session
# Debugger
# - `help ls`     --  Display command options for pry command ls
# - `ls <Object>` --  Show all of the available methods that can be called by an object
# - `_`           --  Last eval
# - `? <Object>`  --  Shows more information (doc) about an object, or method
# - `_file_`      --  Represent the last file Pry touched
# - `wtf?`        --  Print the stack trace, same as `_ex_.backtrace`
# - `$`           --  Show source, shortcut for show-source
# - `edit Class` -- Open file in $EDITOR
# - `edit Class#instance_method` -- Open file in $EDITOR
# - `<ctrl+r>`    --  Search history
# - `_out_`       --  Array of all outputs values, also `_in_`
# - `cd <var>`    --  Step into an object, change the value of self
# - `cd ..`       --  Take out of a level
# - `binding.pry` --  Breakpoint
# - `edit --ex`   --  Edit the file where the last exception was thrown
# - `.<Shell>`    --  Runs the <Shell> command
# - `whereami`    --  Print the context where the debugger is stopped
# - `whereami 20` --  Print the context 20 lines where the debugger is stopped
# - `;`           --  Would mute the return output by Ruby
# - `play -l`     --  Execute the line in the current debugging context
# ## pry-nav
# - `next` -- execute next line
# - `step` -- step into next function call
# - `continue` -- continue through stack
 
# ## pry-rescue
# - `rescue rspec` -- break on exception in rspec
# - `rescue rails server` -- break on exception in rails server
# - `try-again`     -- run last failing spec, reloads the file not the enviornment