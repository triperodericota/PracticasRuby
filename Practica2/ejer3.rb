def order(*numbers)
    numbers.to_a.sort
end

entrada = [10,3,5,7,8,2]
aux = entrada.map { |n| [n] }
puts aux
