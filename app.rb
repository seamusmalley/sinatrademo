require 'sinatra'

get '/' do
    @list  = File.open('cake.list', 'r')
    @count = 1
    erb :print_list
end
