class Stack

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
        @stack[-1]
    end



end

class Queue

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
        @my_map = []
    end

    def set(key, value)
        # @my_map.each do |pair|
        #     if pair[0] == key
        #         pair[1] = value
        #     else
        # idx = 0
        # @my_map.each_with_index do |pair, i|
        #     if pair[0] == key
        #         pair[1] = value
        idx = @my_map.index { |pair| pair[0] == key}
        if idx
            @my_map[idx][1] = value
        else
            my_map << [key, value]
        end
    end

    def get(key)
        @my_map.each do |pair|
            return pair[1] if pair[0] == key
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