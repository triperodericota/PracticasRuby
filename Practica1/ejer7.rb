def process(aString)
	puts(aString.reverse)
	puts(aString.delete " ")
	puts(aString.gsub(/[aeiou]/, 'a' => 4, 'e' =>  3, 'i' => 1, 'o' => 0, 'u' => 6))

end

process("esto es un string")

