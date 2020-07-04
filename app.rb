require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  
    get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    @reverse_name
  end

  get '/square/:number' do
    @num = params[:number].to_i ** 2
    @num.to_s
  end

  get '/say/:number/:phrase' do
    str = ""
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times { str += "#{@phrase}\n" }
    str
  end

 
end