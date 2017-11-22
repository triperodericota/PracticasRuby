def longitud(*params)
    params.each { |object| puts (object.to_s + ' -> ' + object.to_s.size.to_s) }
end

longitud(9, Time.now,'Hola',{un:'hash'},:ruby)
