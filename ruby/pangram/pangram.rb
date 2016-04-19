class Pangram
VERSION = 1

    def self.is_pangram? str
        if str.downcase.split("").select {|x| x =~ /[a-z]/}.sort.uniq.count == 26
            true
        else
            false
        end
    end
end
