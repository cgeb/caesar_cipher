def caesar_cipher(string, n)
  #split the string
  phrase = string.split("")
  #create output array
  cipher = []
  #change n if the shift factor is more than 26
  if n > 26
      n = n - ((n/26) * 26)
  end
  #loop over each element in array
  phrase.each do |letter|
      #characters from A to Z
      if letter.ord.between?(65,90)
        if letter.ord + n > 90
          cipher.push((letter.ord + n - 26).chr)
        else
          cipher.push((letter.ord + n).chr)
        end
      #characters from a to z
      elsif letter.ord.between?(97,122)
        if letter.ord + n > 122
          cipher.push((letter.ord + n - 26).chr)
        else
          cipher.push((letter.ord + n).chr)
        end
      else
        cipher.push(letter)
      end
  end
  #change array back to string
  return cipher.join()
  end
caesar_cipher("What a string!", 57) #"Bmfy f xywnsl!"