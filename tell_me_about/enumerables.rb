require_relative 'rainbow'

class Definition
    attr_accessor :name, :definition, :example, :result
    def initialize(name, definition, example, result)
        @name = name
        @definition = definition
        @example = example
        @result = result
    end

    def read_def
        puts "> *----------~ WOW ~----------*"
        puts ">"
        puts Rainbow("> #{@name.} <").red
        puts ">"
        puts @definition.blue
        puts ">"
        puts @example.yellow
        puts ">"
        puts @result.green
        puts ">"
        puts ">  *---~ The more you know ~---*"
    end
end




# example new Definition instance with "each"

each = Definition.new(
    "each",

    ".each is a Ruby method that can be called on an array. It takes a block
    of code and calls it once for each element, passing that element to the
    block as a paramater.",

    "a = [ 'a', 'b', 'c' ] >>> a.each {|x| print x, ' -- ' }",

    ">>> result => a -- b -- c"
)

















# ruby tell_me_about.rb each

def each
    puts "> *----------~ WOW ~----------*"
    puts ">"
    puts ">  'each'"
    puts ">"
    puts ">  .each is a Ruby method that can be called on an array. It takes a block"
    puts ">  of code and calls it once for each element, passing that element to the"
    puts ">  block as a paramater."
    puts ">"
    puts ">  a = [ 'a', 'b', 'c' ]"
    puts ">  a.each {|x| print x, ' -- ' }"
    puts ">"
    puts ">  >>> result => a -- b -- c"
    puts ">"
    puts ">  *---~ The more you know ~---*"
end



# ruby tell_me_about.rb sort_by

def sort_by
    puts ">  *----------~ WOW ~----------*"
    puts ">" 
    puts ">  .sort_by is a Ruby method that can be called on an array. It takes a block"
    puts ">  of code and returns the array sorted based on that block of code, inspecting each element"
    puts ">  as defined in the block of code, ie: Array.sort_by { |element| block } → array"
    puts ">"
    puts ">  arr = ['apple', 'bear', 'fig']"
    puts ">  arr.sort_by { |word| word.length }"
    puts ">"
    puts ">  >>> result => ['fig', 'pear', 'apple']"
    puts ">"
    puts ">  *---~ The more you know ~---*"
end



# ruby tell_me_about.rb each_key

def each_key
    puts "> *----------~ WOW ~----------*"
    puts ">"
    puts ">  .each_key is a Ruby method that can be called on an hash. It calls a block"
    puts ">  of code once for each key in the hash, passing the key as a parameter"
    puts ">  ie: hash.each_key { |key| block } → keys"
    puts ">"
    puts ">  h = { :'a' => 100, :'b' => 200 }"
    puts ">  h.each_key {|key| puts key.to_s }"
    puts ">"
    puts ">  >>> result => a"
    puts ">                b"
    puts ">  *---~ The more you know ~---*"
end



# ruby tell_me_about.rb each_value

def each_value
    puts "> *----------~ WOW ~----------*"
    puts ">"
    puts ">  .each_key is a Ruby method that can be called on an hash. It calls a block"
    puts ">  of code once for each key in the hash, passing the key as a parameter"
    puts ">  ie: hash.each_key { |key| block } → values"
    puts ">"
    puts ">  h = { :'a' => 100, :'b' => 200 }"
    puts ">  h.each_value {|value| puts value }"
    puts ">"
    puts ">  >>> result => 100"
    puts ">                200"
    puts ">  *---~ The more you know ~---*"
end