# What I want:
# > caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"

def caesar_cipher(string, shift)
  ascii_arr = string.split("").map { |char| char.ord }
  p ascii_arr
  shifted_string = ascii_arr.map { |char| char.to_i - shift }.map { |char| char.chr }
  p shifted_string
end

caesar_cipher("abcdefg", 4)