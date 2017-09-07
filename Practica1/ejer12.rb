def rot(anString, aNumber)
	letters = ('a'..'z').to_a
	equivalent =  letters.map do |letter| ascii = letter.ord + aNumber
		if ascii > 'z'.ord
			'a'.ord + (ascii - 'z'.ord)
		end
	letters_equivalent = Hash [letters.each_with_index.map { |a,i| [a,equivalent[i] ] } ]
	
	encryted_string = ''

end
