

class Emojify
    attr_accessor :str

    def initialize(str)
        @str = str
    end


    def sad
        str + "😞"
    end 

    def happy
        str + "😁"
    end 

    def laughing
        str + "😂"
    end 

    def angry
        str + "😡"
    end 

    def original
        str
    end
end   


sentence = Emojify.new("This is an okay program")
puts sentence.angry # This is an okay program 😠
puts sentence.sad # This is an okay program 🙁
puts sentence.happy # This is an okay program 😠
puts sentence.laughing # This is an okay program 🙁
puts sentence.original
  

sentence2 = Emojify.new("")
sentence3 = Emojify.new("")



