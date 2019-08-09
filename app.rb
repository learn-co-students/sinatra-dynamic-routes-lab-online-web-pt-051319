require_relative 'config/environment'

class App < Sinatra::Base
	# Write your code here!

	get '/reversename/:name' do
		name = params[:name].reverse!
	end

	get '/square/:number' do
		@calculator = params[:number].to_i**2
		"#{@calculator}"
	end

	get '/say/:number/:phrase' do
		@number = params[:number].to_i
		@phrase = params[:phrase].to_s
		@sentence = @phrase * @number
		# @sentence = params[:number].to_i.times { puts params[:phrase] }
		# @sentence = @number.times { puts @phrase }
		"#{@sentence}"

		# binding.pry
	end

	# Concatenates the words and adds a period
	# stop rhyming I mean it.
	get '/say/:word1/:word2/:word3/:word4/:word5' do
		word1 = params[:word1]
		word2 = params[:word2]
		word3 = params[:word3]
		word4 = params[:word4]
		word5 = params[:word5]
		# binding.pry
		# raise params.inspect
		say = word1, word2, word3, word4, word5
		"#{say.join(' ')}."
	end

	get '/:operation/:number1/:number2' do
		operation = params[:operation]
		num1 = params[:number1].to_i
		num2 = params[:number2].to_i
		case operation
		when 'add'
			(num1 + num2).to_s
		when 'subtract'
			(num1 - num2).to_s
		when 'multiply'
			(num1 * num2).to_s
    when
			'divide'
			(num1 / num2).to_s
		end
	end
end # end of Class
