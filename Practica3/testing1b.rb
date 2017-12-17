require 'minitest/autorun'
require 'minitest/spec'

describe '#concatenar' do
  it 'concatena todos los parametros que recibe en un string, separandolos por espacios' do
    class Dummies; end

    assert_equal('Lorem ipsum 4 Dummies', concatenar('Lorem', :ipsum, 4, Dummies))
  end

  it 'elimina dobles espacios si los hubiera en la salida final' do
        assert_equal('TTPS Ruby', concatenar('TTPS',nil,'   ',"\t","\n",'Ruby'))
  end
end


def concatenar(*params)
  str = params.join(' ')
  str.gsub(/\s+/,' ')

end

