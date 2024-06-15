def substrings(word, arr)
    hash = {}
    arr.each do |substr|
        if word.include? substr
            hash[substr] = word.scan(/(?=#{substr})/).count
        end
    end
    return hash
end
