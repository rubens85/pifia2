class Aleatorio

   def initialize
      @semilla = Time.now
   end

   def generarNumero nivel
      return rand(@semilla.to_i)
   end

end

aleatorio = Aleatorio.new
puts aleatorio.generarNumero 1