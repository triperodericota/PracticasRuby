def cuanto_falta? (aTime=Time.new(Time.now.year , Time.now.month, (Time.now.day + 1)))
    puts(aTime)
    puts(aTime - Time.now)
end

cuanto_falta?
cuanto_falta? Time.new(2017,9,26,11,15)

