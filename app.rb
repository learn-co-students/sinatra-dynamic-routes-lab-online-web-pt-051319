require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end 
  
  get '/square/:number' do
    num = params[:number]
    (num.to_i**2).to_s #run operation first then turn it back to string to pass test. 
  end
  
   get '/say/:number/:phrase' do #trickiest method
    string = ""
    (params[:number].to_i).times do
      string += "#{params[:phrase]}\n"
    end
    string
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
    get '/:operation/:num1/:num2' do
      operation = params[:operation]
      num1 = params[:num1].to_i
      num2 = params[:num2].to_i
    if operation == "add"
      answer = num1 + num2
    elsif operation == "subtract"
      answer = num1 - num2
    elsif operation == "multiply"
      answer = num1 * num2
    elsif operation == "divide"
      answer = num1 / num2
    else
      answer = "Unable to perform this operation"
    end
    answer.to_s
  end

end