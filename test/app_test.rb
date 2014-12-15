require 'sinatra/base'
require_relative '../lib/app.rb'
require 'minitest/autorun'
require 'rack/test'

class TalkerTest < Minitest::Test
	include Rack::Test::Methods

	def app
    Talker.new
  end

  def test_it_says_hello_world
    get '/'
    assert last_response.ok?
    assert_equal 200, last_response.status
    assert_equal "Hello, World", last_response.body
  end

  def test_it_says_goodbye
    post '/goodbye'
    assert last_response.ok?
    assert_equal "Goodbye!", last_response.body
  end

  def test_it_asks_a_question
  	# implement me!
  end

end
