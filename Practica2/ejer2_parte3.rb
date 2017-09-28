def procesar_hash (aHash, aProc)
    newHash = { }
    aHash.each { |k,v| newHash[v] = aProc.call(k) }
    newHash
end

puts(procesar_hash({'clave1': 1, 'clave2': 2} , ->(x) { x.to_s.upcase } ))
