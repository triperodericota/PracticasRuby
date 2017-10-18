class Array

def random1    
    if block_given?
        self.shuffle.each {|elem| yield elem }
    else
        self.shuffle.lazy.collect {|elem| puts elem}
    end
end

end

#a = [1,2,3,4]
#a.random1 {|elem| puts (elem + 1)}
