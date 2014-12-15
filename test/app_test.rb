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
    get '/goodbye'
    assert last_response.ok?
    assert_equal "Goodbye!", last_response.body
  end

  def test_it_only_says_goodbye_to_get_requests
  	post '/goodbye'
  	assert_equal 404, last_response.status
  	# implement not_found in the app and
  	# test for the correct error message
  end

  def test_it_says_hello_when_given_a_name_parameter
  	post '/hello', {name: "Rachel"}
  	assert last_response.ok?
  	assert last_response.body.include?("Rachel")
  end

  def test_it_asks_a_question_when_given_a_food_parameter
  	# implement me!
  end

end
