class Talker < Sinatra::Base

  get '/' do
    'Hello, World'
  end

  get '/goodbye' do
  	"Goodbye!"
  end

  get '/question' do
  	"How are you?"
  end

  post '/hello' do
  	"Hello, #{params['name']}!"
  end

  post '/food-question' do
  	"Do you like #{params['food']}?"
  end

end
