def a_ul(aHash)
	output = "<ul>"
	aHash.each_pair {|key,value| output << "<li>#{key}: #{value}</li>"}
	output << "</ul>"
end

puts(a_ul({clave1: 1, clave2: 2, clave3: 3}))


