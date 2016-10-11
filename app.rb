require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "my secret is that I have a very messy room at the moment!"
end

get '/random-cat' do
@names = ["Amigo", "Oscar", "Viking"].sample
erb(:index)
end

get '/named-cat' do
  p params
  @names = params[:name]
  erb(:index)
end
