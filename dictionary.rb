require 'pry'

def substrings(string, dictionary)
  matched_strings = {}
  dictionary.each do |dic_word|
    string.split.each do |word|
      if word.downcase.match(dic_word)
        if matched_strings[dic_word].nil?
          matched_strings[dic_word] = 1
        else
          matched_strings[dic_word] += 1
        end
      end
    end
  end
  p matched_strings
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
substrings('below', dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)
