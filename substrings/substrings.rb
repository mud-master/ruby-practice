def substrings(word, arr)
    hash = {}
    arr.each do |substr|
        if word.include? substr
            hash[substr] = word.scan(/(?=#{substr})/).count
        end
    end
    return hash
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
dict2 = ["a", "good", "dog"]
p substrings("a a a dog dog good boy", dict2)
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
