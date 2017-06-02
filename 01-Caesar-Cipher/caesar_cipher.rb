# Caesar Cipher

def caesar_cipher(text, shift_value)

  # Ensure that given shift value remains in the range.
  shift_value %= 26

  # Split text into array of each character
  text = text.split("")

  # Perform action on each character in the text
  text.map!.each do |character|

    # Check if the character is a letter
    if("A".."z").include? (character)

      # Determine letter replacement's ASCII value
      replacement = (character.ord + shift_value)

      # If replacement value exceeds bounds, subtract 26 to loop to beginnning
      if (replacement > 122 || (replacement > 90 && replacement < (97 + shift_value)))
        replacement -= 26
      end

      # Convert replacement character's ASCII value to the character itself
      replacement.chr

      # If character is not a letter, change nothing
    else
      character = character
    end
  end

  # Print encrypted text
  puts text.join
end

puts "'Hello' shifted by 2: \n"
caesar_cipher("Hello", 2)
puts "'abc ABC' shifted by 10: \n"
caesar_cipher("abc ABC", 10)
puts "Enter a message to encrypt: \n"
message = gets.chomp
puts "Enter a value to encrypt: \n"
value = gets.chomp.to_i
puts "Your encrypted message: \n"
caesar_cipher(message, value)
