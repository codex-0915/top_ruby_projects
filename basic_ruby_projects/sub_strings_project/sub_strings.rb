##########
# @filename             substrings.rb
#
# @description          This program a project in The Odin Project that implement a method #substrings 
#                           that takes a word as the first argument and then an array of valid substrings 
#                           (your dictionary) as the second argument. It should return a hash listing each 
#                           substring (case insensitive) that was found in the original string 
#                           and how many times it was found.
#
# @author               codex-0915
#

def substrings(string, dictionary)
    result_hash = Hash.new(0)
    downcase_string = string.downcase

    dictionary.each do |dict_substring|
        result_hash[substring] = downcase_string.scan(dict_substring).count if downcase_string.include?(dict_substring)
    end
    return result_hash
end

# Sample Test Cases

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# Test 1
puts substrings("below", dictionary)
# Test 2
puts substrings("Howdy partner, sit down! How's it going?", dictionary)

########## End of File