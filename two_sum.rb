def two_sum? (arr, target)
  hash = Hash.new()
  arr.each do |num|
    paired = hash[target-num]
    return true if paired
    hash[num] = true 
  end
  false 
end

def okay_two_sum?(arr,target)
  sorted = arr.sort
  sorted.each do |num|
    
  end
end

arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false