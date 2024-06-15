def getInput
    
    cipher = ""
    phrase = ""
    shift = ""

    until (cipher == "cipher" || cipher == "decipher")
        print "Would you like to decipher or cipher?: "
        cipher = gets.chomp
    end

    until (phrase.length > 0) 
        print "Enter the phrase: "
        phrase = gets.chomp
    end

    until shift.length == 1 
        print "Enter a value for shift: "
        shift = gets.chomp
    end

    return [cipher, phrase, shift]
end

def cipher(phrase, shift)
    phrase_arr = phrase.chars
    shifted_arr = phrase_arr.map {|c| c.ord + shift}
    wrapped_arr = Array.new(shifted_arr.length)

    shifted_arr.each_with_index do |ascii, index|
        if ascii > 122
            wrapped_arr[index] = ascii - 26
        else
            wrapped_arr[index] = ascii

        end
    end

    return wrapped_arr.map {|c| c.chr}.join
end

def decipher(phrase, shift)
    phrase_arr = phrase.chars
    shifted_arr = phrase_arr.map {|c| c.ord - shift}
    wrapped_arr = Array.new(shifted_arr.length)

    shifted_arr.each_with_index do |ascii, index|
        if ascii < 97
            wrapped_arr[index] = ascii + 26
        else
            wrapped_arr[index] = ascii

        end
    end

    return wrapped_arr.map {|c| c.chr}.join

end

input = getInput
p input
if (input[0] == "cipher")
    print "Phrase: '" + input[1].to_s + "' with shift key '" + input[2].to_s + "'\n"
    print "Ciphered text: '" + cipher(input[1], input[2].ord - 96) + "'\n"
else 
    print "Cipher '" + input[1].to_s + "' with shift key '" + input[2].to_s + "'\n"
    print "Deciphered text: '" + decipher(input[1], input[2].ord - 96)  + "'\n"
end