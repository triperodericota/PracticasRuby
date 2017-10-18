module Reverso
    def di_tcejbo
        puts self.object_id.to_s.reverse
    end

    def ssalc 
        puts self.class.to_s.reverse
    end

end

class Object include Reverso
end
o = Object.new
o. extend Reverso
puts o.object_id
puts o.di_tcejbo

un_string = "un string"
puts un_string.object_id
un_string.di_tcejbo
un_string.ssalc
