def caesar_cipher(message, shift)
    # initialize variables
    translated_message = ''

    message.each_char do |char|
        # translate d to z and D to Z 
        if char.ord.between?(65, 90 - shift) || char.ord.between?(97, 122 - shift)
            trans_char = char.ord + shift
            translated_message += trans_char.chr
        elsif char.ord.between?(90 - shift, 90)
            trans_char = 65 + ((char.ord + (shift - 1)) - 90)
            translated_message += trans_char.chr
        elsif char.ord.between?(122 - shift, 122)
            trans_char = 97 + ((char.ord + (shift - 1)) - 122)
            translated_message += trans_char.chr
        else
            translated_message += char
        end
    end
    return translated_message
end

Sample Test Cases:

puts caesar_cipher("What a string!", 5)
