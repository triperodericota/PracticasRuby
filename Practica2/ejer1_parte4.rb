#cada vez que llamas con un bloque, ejecuta el bloque con el termino actual
#y actualiza
#ej: 6.times { puts fibonacci.next } => imprime los 6 primeros terminos de la
# secuencia

fibonacci = Enumerator.new do |caller|
  i1, i2 = 1, 1
  loop do
    caller.yield i1
    i1, i2 = i2, i1+i2
  end
end

sum = 0
sumaFibo = -> num do
    sum += num if num.even?
end

num = fibonacci.next
while num < 4000000
    sumaFibo.call num
    num = fibonacci.next
end
puts sum



