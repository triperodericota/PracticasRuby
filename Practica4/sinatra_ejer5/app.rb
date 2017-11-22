require 'bundler'
Bundler.require

get '/' do
  ['Endpoints:\n'  ,
   '/mcm => Calcula el minimo comun multiplo entre dos valores' ,
   '/mcd => Calcula el maximo comun divisor entre dos valores',
   '/sum => Calcula la suma de los valores recibidos',
   '/even => retorna la cantidad de valores pares entre los valores recibidos',
   '/random => retorna un valor elegido al azar (opcionalmente se pueden enviar dos valores como límites'

  ]
end

get '/mcm/:a/:b' do
  num1 = params[:a].to_i
  num2 = params[:b].to_i
  mcm = 0
  i = 1
  while (mcm == 0) do
    prod = num1 * i
    if ((prod % num2).zero?)
      mcm = prod
    end
    i = i.next
  end
  "El minimo comun multiplo entre #{params[:a]} y #{params[:b]} es: #{mcm.to_s}"
end

get '/mcd/:a/:b' do
  num1 = params[:a].to_i
  num2 = params[:b].to_i

end

get '/sum/*' do
  numbers = []
  params[:splat].collect {|char| puts " - #{char}"}
  params[:splat].collect {|char| numbers << char.to_i unless (char.to_i.zero?)}
  puts numbers
  sum = numbers.inject :+
  "La suma de los valores recibidos es #{sum}"

end

post '/random' do
  "#{rand}"
end

post '/random/:lower/:upper' do
  lower = params[:lower].to_i
  upper = params[:upper].to_i
  "Salio el #{rand(lower...upper)}"
end

