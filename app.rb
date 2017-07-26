require 'sinatra'
require './config'
require './lib/Pifia2'

get '/' do
	session['pifia2'] = Pifia2.new
	session['intentos']=10
	session['parcial']="#{session['intentos']} intentos restantes"
	session['numOculto']= session['pifia2'].generarNumero 1
	erb(:index)
end

get '/numOc' do
	
	erb(:'pages/numAleatorio')
end

post '/go' do
	num = params['num'];
	session['intentos'] -= 1
	
	picas = session['pifia2'].validarPica session['numOculto'], num
	
	session['parcial'] = "#{num}: #{picas}P #{session['intentos']} intentos restantes"
	
	if(session['intentos'] == 0)
		erb(:'pages/lose')
	else
		erb(:index)
	end
	
end