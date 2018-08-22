

class Stack
    attr_accessor :array, :size
    def initialize(size)
      @size = size
      @array = Array.new(size)
    end
    
    #This method should remove from the top of the stack
    def pop
      @array.pop()
      @array << nil
    end
    
    #This method should add to the top of the stack
    def push(element)
      if empty?
        @array.shift()
        @array << (element)
      else "This stack is full and cannot accept any more items"
      end
    end
    
    #This should return the size 
    def size
      @size
    end
    
    #This should return the element at the top of the stack
    def peek
      if full?
        return @array[@array.length - 1]
      else
        puts "you cannot peek inside a stack that isn't full"
      end
    end
    
    private #These methods are private because we only want to use them as utility methods for our public methods. Think about when you need to check if the stack if empty or full 
    
    #This should check if our stack is full based on the intial size
    def full?
      if @array[@array.length - 1] == nil
        return false
      else
        return true 
      end 
    end
    
    #This should check if our stack is empty based on the inital size
    def empty?
      if @array[0] == nil
        return true
      else
        return false
      end
    end
  end
  
  
  my_stack  = Stack.new(5)
  my_stack.push(1)
  my_stack.push(2)
  my_stack.push(3)
  my_stack.push(4)
  my_stack.push(5)
  # my_stack.push(6)
  my_stack.pop
  my_stack.array
  my_stack.peek
  
  
  
  
  
  
  
  
  
  
  