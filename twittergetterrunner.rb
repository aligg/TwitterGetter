require_relative 'twittergetter.rb'

class Begin < TwitterGetter

def start
puts 'What would you like to do? (s)earch for a popular hashtag on twitter or (e)xit?'
	answer = gets.chomp.downcase

while answer != 'e'
	if answer == 'e'
		puts 'Thanks for visting. See you another day.'
		exit

	elsif answer == 's'
		  find_tweet
	else	
		puts 'We couldn\'t understand your answer. Please try again responding with s or e' 
		start  
	end
end
end
end


run = Begin.new
run.start



