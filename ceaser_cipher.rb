def caesar_cipher(string, shift)
  ascii_arr = string.split("").map { |char| char.ord }
  transformed = ascii_arr.map do |char| 
    if char >= 65 && char <= 90
      # Character is uppercase
      ((char - 65 + shift) % 26 + 65).chr # Shift logic
    elsif char >= 97 && char <= 122
      # Character is lowercase
      ((char - 97 + shift) % 26 + 97).chr
    else
      char.chr
    end
  end

  # shifted_string = ascii_arr.map { |char| char.to_i - shift }.map { |char| char.chr }
  
  transformed.join("")
end

puts caesar_cipher("What a string!", 5)