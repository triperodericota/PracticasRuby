def da_nil? (&aBlock)
    result = yield aBlock
    result.nil?
end

puts(da_nil? { })
puts(da_nil? {'algo distinto de nil' })
puts(da_nil? {2 + 2})
"puts(da_nil? 'un string') #da error"
