def caesar_cipher(string, shift)
    letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
    cipher = []
    str_compare = string.chars()
    str = string.downcase
    str = str.chars()
    str.each do |char|
      if letters.include?(char)
        cipher.push(letters.index(char))
      else
        cipher.push(char)
      end
    end
    cipher.map! do |element| 
      if element.is_a? Numeric
        element += shift
        if element > 26
        element -= 26
        end
        letters[element]
      else
        element
      end
    end
  
    cipher.each do |char|
      if str_compare[cipher.index(char)] == str_compare[cipher.index(char)].upcase
        char.upcase!
      end
    end
    cipher = cipher.join('')
    return cipher
end
