
cantidad = 0
while cantidad < 15 
    puts "Cual es la cantidad de numeros que va a ingresar? Debe ser al menos 15"
    cantidad = gets.to_i
end

numeros = 1.upto(cantidad).map do
    puts 'Ingrese un numero'
    numero = gets.to_i
end

resultado = numeros.map do |x| 
    begin
    puts " #{x} / #{x - 1}"
    x / (x - 1)
    rescue ZeroDivisionError 
        "No es posible la division por 0" 
    end
end

puts 'El resultado es: %s' % resultado.join(', ') 
