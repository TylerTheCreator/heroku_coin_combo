require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combo')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/coins') do
  @coins = params.fetch('amount').to_i.coin_combo()
  erb(:coins)
end
