require 'pry-byebug'
require 'pp'

def substrings (sentence, dictionary)
  result = {}
  wordArr = sentence.gsub(/[!@%&",?]/, '').downcase.split(' ')

  wordArr.each do |word|
    dictionary.each do |match|
      if (word.include? match)
        result[match.to_sym] == nil ? result[match.to_sym] = 1 : result[match.to_sym] += 1
      end
    end
  end
  return result.sort.to_h
end

dict = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

pp substrings("Howdy partner, sit down! How's it going?", dict)
