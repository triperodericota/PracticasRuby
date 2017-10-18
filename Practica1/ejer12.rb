def rot(anString, aNumber)
	letters = ('a'..'z').to_a
	equivalent =  letters.map do |letter| 
                ascii = (letter.ord + aNumber) 
		if ascii > ('z'.ord)
			(('a'.ord - 1) + (ascii - 'z'.ord)).chr
                else    
                    ascii.chr
		end
            end
	letters_equivalent = (letters.each_with_index.map { |a,i| [a,equivalent[i] ]}).to_h
end

rot("bienvenidos a la cursada 2017 del ttps-ruby!", 1)