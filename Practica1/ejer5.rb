def contar(anString, reemplacement)
    amount = 0
    %w(anString).each { |word| amount = amount.next if word.downcase.eql? reemplacement.downcase }
    amount
end

puts contar("la casa de la esquina tiene LA puerta azul y la ventana blanca" , "la")