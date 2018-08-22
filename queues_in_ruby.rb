
class Queue
    attr_accessor :array, :size, :item_count
    def initialize(size)
      @array = Array.new(size)
      @size = size
      @item_count = 0
    end
    
    def dequeue
      @array.shift()
      @array << nil
      @item_count -= 1
    end
    
    def enqueue(element)
      
      if !full?
        position_avail = @item_count
        @array[position_avail] = element
        @item_count += 1
      else
        puts "The queue is full!"
      end
    end
    
    def size
      @size
    end
    
    private
    
    def full?
        @item_count == @size
    end
    
    def empty?
      @item_count == 0
    end
  end
  
  
  
  
  my_queue = Queue.new(5)
  my_queue.dequeue
  my_queue.enqueue(1)
  my_queue.enqueue(2)
  my_queue.enqueue(3)
  my_queue.enqueue(4)
  my_queue.enqueue(5)
  my_queue