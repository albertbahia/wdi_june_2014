class Apple

attr_reader(:name, :size, :deliciousness)

    def initialize(name, size, deliciousness)
        @name = name
        @size = size
        @deliciousness = deliciousness
    end
    
    def gets_eaten(bite)
        if size > 0
        @size = @size - bite
        end
    end
    
end

