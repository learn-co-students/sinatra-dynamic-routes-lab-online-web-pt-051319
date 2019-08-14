require_relative 'config/environment'

class App < Sinatra::Base
	get('/reversename/:name'){ params[:name].reverse }
	get('/square/:number') do 
		num = params[:number].to_f
		do_the_math(num).to_s
	end
	get('/say/:number/:phrase') do
		num, phrase = params.values
		do_the_math(phrase, num.to_f)
	end
	get('/say/:word1/:word2/:word3/:word4/:word5'){ params.values.join(" ") + "." }
	get('/:operation/:number1/:number2') do
		op, n1, n2 = params.values
		n1, n2 = n1.to_f, n2.to_f
		do_the_math(n1, n2, op)
	end

	def do_the_math(n1, n2 = nil, op = 'multiply')
		n2 ||= n1
		case op
		when 'add'
			(n1 + n2).to_s
		when 'subtract'
			(n1 - n2).to_s
		when 'multiply'
			(n1 * n2).to_s
		when 'divide'
			(n1 / n2).to_s
		end
	end
end