class Aleatorio

   def initialize
      @semilla = Time.now
   end

   def generarNumero nivel
      return rand(@semilla.to_i)
   end

end