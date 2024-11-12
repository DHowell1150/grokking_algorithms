require "pry"
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

def binary_search(arr, item_to_find) #on ordered list
  low = 0
  high = (arr.length) - 1  
  while low <= high
    mid = (high + low) / 2
    guess = arr[mid]
    if guess == item_to_find
      return mid
    elsif guess <= item_to_find
      low = mid + 1
    else #guess >= item_to_find
      high = mid - 1
    end
  end
end
puts binary_search(arr, 9)