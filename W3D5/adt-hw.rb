class Stack

    attr_reader :stack

    def initialize
        @stack = []

    end

    def push(el)
        @stack << el
    end

    def pop
        @stack.pop
    end

    def peek
        @stack[0]
    end



end

class Queue

    attr_reader :queue

    def initialize
        @queue = []

    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue[0]
    end

end

class Map

    def initialize
        my_map = []
    end

    def set(key, value)
        
    end

    def get(key)
    end

    def delete(key)
    end

    def show

    end
end