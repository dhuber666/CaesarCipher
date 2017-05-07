

def caesar_cipher(text, number)

  #iterate over the text and change every letter to letter + number
  # Figure out ascii A - Z and a - z



  letters = text.split("") # now I have every letter in the array
  letters.map! do |letter|

    if (letter.ord > 96 && letter.ord < 123) #for lower cased letters
      if(letter.ord + number > 122)
        letter = ((letter.ord + number)-26).chr
      else
        letter = (letter.ord + number).chr
      end

    elsif (letter.ord > 64 && letter.ord < 91) #for upper cased letters
      if(letter.ord + number > 90)
        letter = ((letter.ord + number)-26).chr
      else
        letter = (letter.ord + number).chr
      end


    else

      letter = letter

    end
  end

  cipher = letters.join()
  puts cipher


end



puts "Please enter your text you want to be ciphered: "
text = gets.chomp

shift = false
while shift != true do
  puts "Please enter a number for the shift factor (Between 1 and 25)"
  number = gets.chomp.to_i

  if number > 0 && number < 26
    shift = true
  end
end

caesar_cipher text, number

puts
