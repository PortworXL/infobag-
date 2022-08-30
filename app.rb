
require ('sinatra')
require ('sinatra/reloader')
require ('./lib/coin')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:index)