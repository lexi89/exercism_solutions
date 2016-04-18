class Trinary

    def initialize trinary
        @trinary = trinary
    end

    def to_decimal
        return 0 if @trinary.match(/[^0-2]/)
        sum = 0
        @trinary.split("").map(&:to_i).reverse.each_with_index do |value, index|
            sum += value*3**index
        end
        sum
    end
end
