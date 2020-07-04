require_relative 'config/environment'

class App < Sinatra::Base


  # Code your final two routes here:
  
    get '/goodbye' do
    "Goodbye!"
  end

  # This is a sample dynamic route.
  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye #{@user_name}!"
  end

end