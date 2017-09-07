def rot(anString, aNumber)
	letters = ('a'..'z').to_a
	encryted_string = ''
	valid_block = case aNumber when aNumber > 25 then {|a_char| encryted_string + letters[ 25 - (letters.index(a_char))] }
	else {|a_char| encryted_string + letters[letters.index(a_char)] }
	anString.each_char {|a_char| encryted_string + letters[ 25 - (letters.index(a_char))] }

end
