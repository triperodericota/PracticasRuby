require 'minitest/autorun'
require 'minitest/spec'

describe '#incrementar' do
    describe 'cuando el valor es numerico' do
      it 'incrementa el valor en un delta recibido como parametro' do
        x = -9
        delta = 10
        assert_equal(1,incrementar(x,delta))
      end

      it 'incrementa en un delta de una unidad por defecto' do
        x = 10
        assert_equal(11,incrementar(x))
      end
    end

    describe 'cuando el valor es un string' do
      it 'arroja un RuntimeError' do
        x = '10'
        assert_raises(RuntimeError) do
          incrementar(x)
        end
        assert_raises(RuntimeError) do
          incrementar(x,9)
        end
      end
  end
end


def incrementar(x,delta=1)
  begin
    x + delta
  rescue TypeError
    puts "El valor debe ser numerico"
    raise RuntimeError
  end
end

