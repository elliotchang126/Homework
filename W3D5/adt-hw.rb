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

    attr_reader :my_map
    def initialize
        @my_map = []
    end

    def set(key, value)
        @my_map.each do |pair|
            if pair[0] == key
                pair[1] = value
            else
            my_map << [key, value]
            end
        end
    end

    def get(key)
        @my_map.each do |pair|
            return pair [1] if pair[0] == key
        end
    end

    def delete(key)
        value = get(key)
        self.delete([key, value])
    end

    def show
        my_map
    end
end