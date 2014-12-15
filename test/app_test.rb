require 'sinatra/base'
require_relative '../lib/app.rb'
require 'minitest/autorun'
require 'rack/test'

class TalkerTest < Minitest::Test
	include Rack::Test::Methods

	def app
    Talker.new
  end

end
