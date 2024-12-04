# You have a suitcase with many boxes.  Each box may contain futher boxes.  Somewhere in one of those boxes is a key.  You are tasked to find the key.

def look_for_key(main_box)
  box.each do |item|
    if item.is_a_box
      look_for_key(item)
    elsif item.is_a_key?
      "Key is found!"
    end
  end
end

# make sure to put a conditional so it's not an infinite loop (otherwise it would go infinitely into negatives)
num = 3
def countdown(num)
  puts num
  countdown(num - 1) if num > 0
end
puts countdown(num)
