require "pry"
lst = [1, -2, 3, 4, -5, 6, 7, 8, 9, 10]
# def count_positives_sum_negatives(lst)
#   return [] if lst == []
#   pos = 0
#   neg = []
#   lst.each do |e|
#     pos += 1 if e > 0 
#     neg << e if e < 0
#   end
#   [pos, neg.sum]
# end

# puts count_positives_sum_negatives(lst)


# refactored: 
def count_positives_sum_negatives(lst)
  return [] if lst.empty?
  lst.each_with_object([0, 0]) do | num, result |
    result[0] += 1 if num > 0
    result[1] += num if num < 0
    result
  end
end

puts count_positives_sum_negatives(lst)



#Build without using an enumerator.  Should be a one line method
# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# def filter_odds(arr)
#   require 'pry' ; binding.pry
# end
# puts filter_odds(arr)

# arr.select { |e| e.even? }  # This uses enumerator
# arr - (1..10).step(2).to_a # This is not dynamic enough to put in a method.  Only considers said range.
