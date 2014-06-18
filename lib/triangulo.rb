  class Triangulo

     attr_accessor :a, :b, :c

    def initialize a, b, c
        self.a = a
        self.b = b
        self.c = c
    end
    
    def valid?
      if(a+b >= c && a+c >= b && b+c >= a)
        true
        else
        false
      end
    end
  
  end
