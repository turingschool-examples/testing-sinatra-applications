class Talker < Sinatra::Base

  get '/say/:phrase' do
  	phrase = params[:phrase]
    case phrase
    when "say-something"
      erb :index, locals: {
        title: "Say Something",
        video: '<iframe width="560" height="315" src="//www.youtube.com/embed/-2U0Ivkn2Ds" frameborder="0" allowfullscreen></iframe>',
        artists: ["Ian Axel", "Chad Vaccarino", "Christina Aguilera"],
        list: [1,2,3,4]
      }
    when "so-fancy"
      erb :index, locals: {
        title: "I'm So Fancy",
        video: '<iframe width="560" height="315" src="//www.youtube.com/embed/O-zpOMYRi0w" frameborder="0" allowfullscreen></iframe>',
        artists: ["Iggy Azalea", "Charli XCX"],
        list: ["Denver", "New York", "Chicago"]
      }
    else
      erb :index, locals: {
        artists: [],
        title: phrase,
        phrase: phrase,
        list: [10, 11, 12, 13, 14, 15]
      }
    end
  end

end
