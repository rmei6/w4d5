def my_min(array)
  n = 0       #Phase 2 
  array.each_with_index do |ele,i|
    n = ele if ele <= n 
    n = ele <= n ? ele : n
  end
  n
  # min = 0   #Phase 1
  # array.each do |ele|
  #   smallest = true
  #   array.each do |el|
  #     smallest = false if ele > el
  #   end
  #   min = ele if smallest
  # end
  # min
end

def largest_contiguous_subsum (arr)
  # sum = arr.first     #Phase 1
  # sarr = []
  # (0...arr.length).each do |i|
  #   (i...arr.length).each do |j|
      
  #     sarr << arr[i..j]
    
  #   end
  # end
  # #p sarr
  # sarr.each do |ele|
  #   sum = ele.sum if ele.sum > sum
  # end
  # # p narr.select {|num| num != 0}
  # sum
  largest_sum = arr.first   #Phase 2
  current_sum = 0
  (0...arr.length).each do |i|
    current_sum += arr[i]
    if current_sum > largest_sum
      largest_sum = current_sum
    elsif current_sum < 0
      current_sum = 0
    end
  end
  largest_sum
end

list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])

list = [-5, -1, -3]
p largest_contiguous_subsum(list) # => -1 (from [-1])


