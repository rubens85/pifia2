require 'sinatra'
require './config'

get '/' do
	#session['numOculto']=4289
	erb(:index)
	#erb(:'pages/numAleatorio')
	#erb(:index)
end

get 'numOc' do
	erb(:'pages/numAleatorio')
end