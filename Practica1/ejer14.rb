def notation_hexa(a_rgb_array)
  notation = a_rgb_array[0].to_s(16) + a_rgb_array[1].to_s(16) + a_rgb_array[2].to_s(16)

end

puts(notation_hexa([0,128,255]))

