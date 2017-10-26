def sum_multiples_for_3_5(aLimitNumber)
  naturals = (1..aLimitNumber)
  naturals.inject(0) {|sum,n| sum + (n * 3) + (n * 5) }

end

puts(sum_multiples_for_3_5(3))

