require 'sinatra'
require './config'
require './lib/Aleatorio'

get '/' do
	session['intentos']=10
	session['parcial']="#{session['intentos']} intentos restantes"
	
	erb(:index)
end

get '/numOc' do
	session['numOculto']=new Aleatorio.new.generarNumero 1
	
	erb(:'pages/numAleatorio')
end

post '/go' do
	session['intentos'] -= 1
	session['parcial'] = "#{params['num']}: 1P #{session['intentos']} intentos restantes"
	
	erb(:index)
end