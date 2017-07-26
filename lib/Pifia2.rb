
class Pifia2

   #Metodo que permite generar el numero aleatori
   def generarNumero nivel ,generador=Random.new
      return generador.rand(10000..99999)
   end

   #Validar las picas
   def validarPica numeroOculto, numeroUsuario
   	numero1=numeroOculto.to_s
   	numero2=numeroUsuario.to_s
   	numeroPicas=0
   	 #Recorre la cadena 2
   	 for i in 0..numero1.length
   	 	#Recorre la cadena 1
   	    for j in 0..numero2.length
           if numero1[i]==numero2[j]
           	if i!=j
           		numeroPicas=numeroPicas+1
           	end 
           end
   	    end
   	 end
   	 return numeroPicas
    end

   #Validar las fijas
   def validarFijas numeroOculto, numeroUsuario
   	numero1=numeroOculto.to_s
   	numero2=numeroUsuario.to_s
   	numeroFijas=0
   	 #Recorre la cadena 2 y 1
   	 for i in 1..numero1.length
   	 	#Compara las cadenas
        if numero1[i] == numero2[i]
             numeroFijas=numeroFijas+1
        end
   	 end
   	 return numeroFijas
    end
end
