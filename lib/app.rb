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

end
