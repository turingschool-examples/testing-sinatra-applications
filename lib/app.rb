class Talker < Sinatra::Base

  get '/' do
    'Hello, World'
  end

  post '/goodbye' do
  	"Goodbye!"
  end

  get '/question' do
  	"How are you?"
  end

end
