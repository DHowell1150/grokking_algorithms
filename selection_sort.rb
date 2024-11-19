require "pry"
arr = [5, 2, 9, 6, 3, 1]


# start by defining the smallest value at indices 0 then iterate over each indices to evaluate if it is less than the currently defined value.  
# => smallest value

def find_smallest(arr)
  smallest = arr[0]
  smallest_index = 0
  (1...arr.length).each do |i| 
    if arr[i] < smallest
      smallest = arr[i]
      smallest_index = i
    end
  end
  smallest_index
end
puts find_smallest(arr)




def selection_sort(arr)
  new_arr = []
  arr.length.times do
    smallest = find_smallest(arr)
    new_arr << arr.delete_at(smallest)
  end
  new_arr
end
puts selection_sort(arr)
