class LRUCache

    def initialize(num)
        @cache = []
        @size = num
    end

    def count
        @cache.count
    end

    def add(el)
        @cache << el
    end

    def show

    end

    private
    
end