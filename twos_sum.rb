nums = [3, 2, 2, 2, 4]
target = 6
$flag = false

# def two_sum(nums, target)
#   nums.each_with_index do |el, idx|
#     nums.each_with_index do |el2, idx2|
#       next unless el + el2 == target

#       $flag = true
#       puts("index1 = #{idx}, index2 = #{idx2}")
#       break
#     end

#     break if $flag
#   end
# end

# def two_sum(nums, target)
#   return if !nums[0] || !target

#   result = []
#   nums.each_with_index do |num1, i|
#     break if result[1]

#     nums.each_with_index do |num2, j|
#       next if i == j
#       break if result[1]

#       result.push(i, j) if num1 + num2 == target
#     end
#   end
#   result
# end
def two_sum(nums, target)
  dict = {}
  nums.each_with_index do |n, i|
    return dict[target - n], i if dict[target - n]

    dict[n] = i
    p dict
  end
end
p two_sum(nums, target)
