 
class Queue
  
    def initialize
      @element = []
    end
    
    def peek
      #returns the next element but doesnt remove it
      return @element[0]
    end
    
    def enqueue(elem)
      #adds an element to the queue
      @element.push(elem)
    end
    
    def dequeue
      #removes and returns the element 
      @element.shift
    end
    
    def empty?
      #return true if queue is empty and false otherwise
      if @element.length == 0
        return true
      else
      return false
      end
    end
    
  end
 
 puts   "1. Dog Arrived"
 puts   "2. Cat Arrived"
 puts   "3. Animal Completed"
 puts   "4. Quit"
 
my_queue = Queue.new
current_ticket = 0

loop do

  case gets.to_i
  when 1
    current_ticket += 1
    my_queue.enqueue({
        animal_type: 'Dog',
        ticket_num: current_ticket 
    })
    puts "Your dog is queued with ticket number:#{current_ticket}"
  when 2
  	current_ticket +=1
    my_queue.enqueue({
        animal_type: 'cat',
        ticket_num: current_ticket 
    })
    puts "Your cat is queued with ticket number:#{current_ticket}"
  when 3
  	result = my_queue.dequeue()
  	if result == nil 
        puts "No more tickets"
  		break
    else
    puts "#{result[:animal_type]} with ticket number #{result[:ticket_num]} was served"
    end

  when 4
  	break
  else
    puts "Please select an option"
  end

end


