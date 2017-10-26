require 'minitest/autorun'
require 'minitest/spec'

describe '#longitud' do
  it 'dado un arreglo de palabras retorna la longitud de cada una de ellas' do
    assert_equal([1,2,3,4,0], longitud(['a','aa','aaa','aaaa','']))
  end
end


def longitud(anArray)
	anArray.map { |aWord| aWord.length }

end

puts(longitud(['TTPS' , 'Un string' , 'otro string', 'Ruby']))
