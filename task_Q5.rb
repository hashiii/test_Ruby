cnt = 0
conins = [10,50,100,500]
target_value = 1000

(0..15).each do |i|
conins.repeated_combination(i).each{|coin_set|
  #puts coin_set is array and check this as target_value
  cnt += 1 if coin_set.inject(:+) == target_value 
  }
end
puts cnt
