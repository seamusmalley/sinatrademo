require 'sinatra'
require 'sinatra/json'

get '/' do
    @list  = File.open('cake.list', 'r')
    @count = 1
    erb :print_list
end

get '/json' do
    json File.read('cake.list')
end
