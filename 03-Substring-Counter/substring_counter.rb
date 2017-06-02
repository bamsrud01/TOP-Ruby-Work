dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def substrings(text, dictionary_array)

  # Initialize hash to keep count of instances of dictionary items
  instances = Hash.new(0)

  # Split the string into an array of words
  text = text.split(" ")

  # Check each word with the dictionary
  text.each do |word|
    dictionary_array.each do |item|
      if word.downcase.include? item
        instances[item] += 1
      end
    end
  end
  # Return the hash of instances
  return instances
end

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down!  How's it going?", dictionary)
