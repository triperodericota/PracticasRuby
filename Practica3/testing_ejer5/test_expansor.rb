require_relative 'expansor'
require 'minitest/autorun'
require 'minitest/spec'

describe 'expansor' do

  # Casos de prueba con situaciones y/o entradas de datos esperadas
  describe 'Casos felices' do
    describe 'cuando la entrada es el string "a"' do
      it 'debe devolver "a"' do
        assert_equal('a',expansor('a'))
      end
    end

    describe 'cuando la entrada es el string "f"' do
      it 'debe devolver "ffffff"' do
        result = 'f' * ('f'.ord - 96)
        assert_equal(result , expansor('f'))
      end
    end

    describe 'cuando la entrada es el string "escoba"' do
      it 'debe devolver "eeeeessssssssssssssssssscccooooooooooooooobba"' do
        result = 'escoba'.gsub(/[a-z]/) {|char| char * (char.ord - 96)}
        assert_equal(result , expansor('escoba'))
      end
    end
  end

  # Casos de pruebas sobre situaciones inesperadas y/o entradas de datos anómalas
  describe 'Casos tristes' do
    describe 'cuando la entrada no es un string' do
      it 'debe disparar una excepción estándar con el mensaje "La entrada no es un string"' do
        assert_raises(StandardError) {expansor(12939)}
        assert_equal("La entrada no es un string" , $!.message)
        assert_raises(StandardError) {expansor(nil)}
        assert_raises(StandardError) {expansor(Range)}
        assert_raises(StandardError) {expansor(true)}
      end
    end

    describe 'cuando la entrada es el string vacío' do
      it 'debe disparar una excepción estándar con el mensaje "El string es vacío"'
    end

    describe 'cuando la entrada es el string "9"' do
      it 'debe disparar un excepción estándar con el mensaje "El formato del string es incorrecto"'
    end

    describe 'cuando la entrada es el string "*"' do
      it 'debe disparar una excepción estándar con el mensaje "El formato del string es incorrecto"'
    end
  end
end
