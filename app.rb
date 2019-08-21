require 'pry'

require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do
  @user_name = params[:name]
  "#{@user_name}".reverse
  end

  get "/square/:number" do
    @number = params[:number]
    "#{@number.to_i ** 2}"
  end

  get "/say/:number/:phrase" do
    @phrase = params[:phrase]
    @number = params[:number]
    response = ""
    @number.to_i.times do 
      response += @phrase
    end
    response
    
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get "/:operation/:number1/:number2" do
    
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
  
    response = "unable to perform this operation"
    case @operation
    when "add" 
      response = (@num1 + @num2).to_s
    when "subtract"
      response = (@num1 - @num2).to_s
    when "multiply"
      response = (@num1 * @num2).to_s
    when "divide"
      response = (@num1 / @num2).to_s

    end
    end
  

end

