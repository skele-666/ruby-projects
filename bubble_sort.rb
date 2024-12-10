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

def bubble_sort(arr)
  n = arr.length
  comparison_count = 0
  swap_count = 0
  # Repeat (n - 1) times
  (n - 1).times do |k| # Iteration count
    swapped = false
    # Loop through the array. Gotta incude 0.. so it goes through each number.
    # Break when the loop reaches n - 1 - k
    (0...(n - 1 - k)).each do |index|
      comparison_count += 1  # Increment for each comparison
      if arr[index] > arr[index + 1]
        arr[index], arr[index + 1] = arr[index + 1], arr[index] # Swap
        swap_count += 1  # Increment for each swap
        swapped = true # Mark that swap occured
      end
    end
    break unless swapped
  end
  puts "Total Comparisons: #{comparison_count}"
  puts "Total Swaps: #{swap_count}"
  p arr
  arr
end

bubble_sort([4, 3, 78, 2, 0, 2])