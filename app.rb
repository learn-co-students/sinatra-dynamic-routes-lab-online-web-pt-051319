require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    name = params[:name]
    name.reverse
  end

  get '/square/:number' do
    num = params[:number].to_i
    (num**2).to_s
  end

  get '/say/:number/:phrase' do
    num = params[:number]
    phrase = params[:phrase]
    output = ""
    num.to_i.times do
      output = output + phrase + "\n"
    end
    output
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    w = []
    w[0] = params[:word1]
    w[1] = params[:word2]
    w[2] = params[:word3]
    w[3] = params[:word4]
    w[4] = params[:word5]
    output = w.join(" ") + "."
  end
  
  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    output = nil
    case operation
    when 'add'
      output = num1 + num2
    when 'subtract'
      output = num1 - num2
    when 'multiply'
      output = num1 * num2
    when 'divide'
      output = num1 / num2
    end
    output.to_s
  end
end