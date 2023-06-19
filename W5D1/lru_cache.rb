class LRUCache

    def initialize(num)
        @cache = []
        @size = num
    end

    def count
        @cache.count
    end

    def add(el)
        if @cache.include?(el)
            @cache.delete(el)
            @cache << el
        elsif @cache.count >= size
            @cache.shift
            @cache << el
        else
            @cache << el
        end
    end

    def show
        puts @cache
    end

    private

end