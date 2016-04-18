class Bst

    attr_accessor :data, :left, :right

    def initialize data
        @data = data
    end

    def array
        result = []
        result += left.array if left
        result += [data]
        result += right.array if right

        return result
    end

    def each(&block)
        array.each{|element| yield(element)}
    end

    def insert number
        if number <= @data
            if @left.nil?
                @left = Bst.new(number)
            else
                @left.insert(number)
            end
        else
            if @right.nil?
                @right = Bst.new(number)
            else
                @right.insert(number)
            end
        end
    end
end
