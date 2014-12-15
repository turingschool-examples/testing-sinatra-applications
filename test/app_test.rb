require 'sinatra/base'
require_relative '../lib/app.rb'
require 'minitest/autorun'
require 'rack/test'
require 'nokogiri'

class TalkerTest < Minitest::Test
	include Rack::Test::Methods

	def app
		Talker.new
	end

	def test_it_says_a_default_phrase
		get '/say/I-Like-Testing-Sinatra'
		html = Nokogiri::HTML(last_response.body)
		assert last_response.ok?
		assert_equal "I-Like-Testing-Sinatra", html.css('title').text
		assert_equal 6, html.css('li').size
		assert_empty html.css('section')
		assert_equal "http://turing.io", html.at_css("a")['href']
	end

	def test_it_has_an_artists_section_for_say_something
		get '/say/say-something'
		html = Nokogiri::HTML(last_response.body)
		section = html.css('section')
		artists = section.css('li').map{ |li| li.text }

		assert_equal 3, artists.length
		assert_equal "Artists:", section.css('h3').text
		assert_equal 3, artists.size
		assert_includes artists, "Christina Aguilera"
	end

	def test_it_has_a_video_for_so_fancy
		skip
		# implement me!
	end

	# def test_something_else_using_nokogiri
		# implement me!
	# end

end
