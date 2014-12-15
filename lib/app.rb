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

  get '/language/:name' do
  	"#{params[:name]} is a great language"
  end

  get '/goodbye/:name' do
    redirect to("/say/goodbye/#{params[:name]}")
  end

  get '/say/:something/:name' do
    "#{params[:something]} #{params[:name]}"
  end

end
