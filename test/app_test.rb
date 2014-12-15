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

end
