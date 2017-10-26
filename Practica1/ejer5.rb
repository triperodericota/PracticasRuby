require 'minitest/autorun'
require 'minitest/spec'

describe '#contar' do
  it 'cuenta la cantidad de veces que aparece el segundo string en el primero' do
    assert_equal(5, contar("la casa de la esquina tiene LA puerta azul y la ventana bLANCA","la"))
    assert_equal(0, contar("la ciudad de La Plata es tripera", "hola"))
    assert_equal(1, contar("la ciudad de La Plata es tripera", "tripera"))
    assert_equal(3, contar("la ciudad de La Plata es tripera", "la"))
    assert_equal(1, contar("la ciudad de La Plata es tripera", "LA PLaTa"))
  end
end

def contar(anString, reemplacement)
    amount = 0
    anString.split(' ').each { |word| (amount = amount + 1) if word.downcase.eql? reemplacement.downcase }
    amount
end

