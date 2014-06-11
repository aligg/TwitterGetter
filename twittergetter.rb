
require 'rubygems'
require 'oauth'
require 'json'
require 'twitter'

class TwitterGetter
	attr_accessor :query, :client, :search

	def initialize
		@query = query
		@client = client
		@search = search
	end

	def find_tweet
		client = Twitter::REST::Client.new do |config|
  		config.consumer_key    = 'miaukeyhere'
  		config.consumer_secret = 'miaumiausecrethere'
	end

	puts 'What would you like to search for on Twitter? [or (e)xit]'
	query = gets.chomp
	puts '-----------Check out these recent tweets-----------'
    client.search("#{query}", :result_type => 'popular', :lang => 'en').take(10).each do |tweet|
  	puts "#{tweet.text} \n\t"
  		if query == 'e'
        exit
  		end
	end
end
end



