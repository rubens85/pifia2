class Pifia2

   #Metodo que permite generar el numero aleatori
   def generarNumero nivel
      return rand(generarSemilla.to_i)
   end

   #Metodo que permite generar la semilla
   def generarSemilla
   	  #Asigna el tiempo
      hora = Time.now.hour
      minuto = Time.now.min
      segundo = Time.now.sec
      #Valida el tama.o de la cadena 
      if hora.to_s.length == 1
         hora = hora + 10
      end
      if minuto.to_s.length == 1
         minuto = minuto + 10
      end
      if segundo.to_s.length == 1
         segundo = segundo + 10
      end
      #Retorna la cadena concatenada
      return "#{hora}#{minuto}#{segundo}"
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
           if numero1[i] == numero2[j]
           	if i!=j
           		numeroPicas=numeroPicas+1
           	end 
           end
   	    end
     return numeroPicas
   	 end
    end

   #Validar las fijas
   def validarFijas numeroOculto, numeroUsuario
   	numero1=numeroOculto.to_s
   	numero2=numeroUsuario.to_s
   	numeroFijas=0
   	 #Recorre la cadena 2 y 1
   	 for i in 0..numero1.length
   	 	#Compara las cadenas
        if numero1[i] == numero2[i]
           numeroFijas=numeroFijas+1
        end
     return numeroFijas
   	 end
    end
end

pifia2 = Pifia2.new
pust pifia2.validarFijas 1234, 1567