require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "my secret is that I have a very messy room at the moment!"
end

get '/random-cat' do
@name = ["Amigo", "Oscar", "Viking"].sample
erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:dog]
  erb(:index)
end

get '/cat-form' do
  erb(:form)
end
