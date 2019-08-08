require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number**2}"
  end

  # have michael explain this one to me

  get '/say/:number/:phrase' do
    @repeated_phrase = ""
    params[:number].to_i.times { @repeated_phrase += params[:phrase] }
    @repeated_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
        "#{params[:number1].to_i + params[:number2].to_i}"
    when "subtract"
        "#{params[:number1].to_i - params[:number2].to_i}"
    when "multiply"
        "#{params[:number1].to_i * params[:number2].to_i}"
    when "divide"
        "#{params[:number1].to_i / params[:number2].to_i}"
    end
  end

end