
def expansor(anString)
  position = 0
  letters_position = Hash.new
  ('a'...'z').each do |letter|
    position = position + 1
    letters_position[letter] = position
  end
  new_string = ''
  begin
    anString.each_char {|char| new_string << (char * letters_position[char])}
    new_string

  rescue NoMethodError
    raise StandardError , "La entrada no es un string"
  end
end
