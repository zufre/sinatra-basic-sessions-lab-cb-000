require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :session
    set :session_secret, "123456"
  end
  get '/' do
    session[:item] = params[:item]
    @cart =  session[:item]
    erb :index
  end
end
