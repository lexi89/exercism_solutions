class ETL

    def self.transform old
        new_hash = {}
        old.each do |score, letters_arr|
            letters_arr.each {|letter| new_hash[letter.downcase] = score}
        end
        new_hash
    end
end
