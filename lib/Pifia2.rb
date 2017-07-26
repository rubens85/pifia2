require './Aleatorio'

class Pifia2

   def generarNumero
   	aleatorio = Aleatorio.new
   	puts aleatorio.generarNumero 1
   end

   def validarPica
   	aleatorio = Aleatorio.new
   	return aleatorio.validarPica 1234, 1567
   end



end

