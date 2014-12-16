require 'bundler'
Bundler.require :default, :test
require_relative '../lib/app.rb'

# the above three lines are an alternative to:
# require_relative '../lib/app.rb'
# require 'sinatra/base'
# require 'minitest/autorun'
# require 'rack/test'


class TalkerTest < Minitest::Test
	include Rack::Test::Methods

	def app
    Talker.new
  end

  def test_it_returns_a_200
  	get '/'
  	assert last_response.ok?
  end

end
