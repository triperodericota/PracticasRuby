def ejer3(*args)
    begin
        args.each { |elem| yield elem }
        :ok
        rescue RuntimeError
            puts "Algo salio mal"
            :rt
        rescue NoMethodError => no_method
            puts "No encontre un metodo:" + no_method.message
            :nm
        rescue Exception => e
            puts "No se que hacer!"
            raise e
    end
end

puts(ejer3(1,2,3,4,5,6) {|num| num.succ })
ejer3(1,2,3,4,5,6)