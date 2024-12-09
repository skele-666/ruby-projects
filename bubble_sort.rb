# (n - 1) times where n is the number of elements in the array (arr.length - 1):
# FOR EACH elt IN list
# look at elt and elt to the immediate right
#   IF out of order
#     SWAP elements
#   END
# END
# 
# After ONE pass through the entire list, it is guaranteed that the greatest element will be in the correct place.
# Therefore, in subsequent passes, we do not need to check the last element(s), only needing to check the remaining unsorted
# After k iterations, checking the last k elements is redundant.
#
# [3, 2, 1]
# [2, 3, 1] => [2, 1, 3]
# [1, 2, 3]

require 'pry-byebug'

def bubble_sort(arr)
  n = arr.length

  # Repeat (n - 1) times
  (n - 1).times do
    # Loop through the array. Gotta incude 0.. so it goes through each number
    (0...(n - 1)).each do |index|
      if arr[index] > arr[index + 1]
        arr[index], arr[index + 1] = arr[index + 1], arr[index]
      end
    end
  end
  arr
end

p bubble_sort([4, 2, 7, 8])