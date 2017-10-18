    module Countable
        INVOCATIONS = {}
        
        def Countable.included(aClass)
           aClass.
        end
        
        def self.count_invocations_of (sym)
            INVOCATIONS[self][sym] = 0
        end

        def invoked?(sym)
            INVOCATIONS[sym] > 0
        end

        def invoked (sym)
            INVOCATIONS
        end

    end

    class Array
     include Countable
        count_invocations_of :max
        count_invocations_of :min
    end

    my_array = [1, 2, 3, 4, 5]

    puts invoked? :max
    puts invoked? :min

    my_array.max
    my_array.min

    puts invoked? :max
    puts invoked? :min
    puts invoked :max
    puts invoked :min
