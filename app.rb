require 'sinatra'
require './config'
require './lib/Aleatorio'

get '/' do
	erb(:index)
end

get 'numOc' do
	session['numOculto']=new Aleatorio.new.generarNumero 1
	erb(:'pages/numAleatorio')
end