def reemplazar(anString)
	anString.gsub(/[{}]/, {'{' => 'do\n', '}' => '\nend' })
end

puts(reemplazar("3.times { |i| puts i }"))
puts(reemplazar("aCollection.each { |anElement| puts(anElement) }"))

