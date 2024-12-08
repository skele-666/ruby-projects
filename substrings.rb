require 'pry-byebug'

def substrings(string, array)
  array.map!(&:downcase)
  string.downcase!
  matches = Hash.new(0)

  array.each do |substring|
    if string.include?(substring)
      matches[substring] += 1
    end
  end

  matches
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# puts '{"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}'