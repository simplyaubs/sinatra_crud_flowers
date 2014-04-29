require 'sinatra/base'

class Application < Sinatra::Application

  def initialize(app=nil)
    super(app)

    # initialize any other instance variables for you
    # application below this comment. One example would be repositories
    # to store things in a database.

  end

  get '/' do
    erb :index, locals: {list_of_flowers: DB[:flowers].to_a}
  end

  get '/flowers/new' do
    erb :new
  end

  post '/flowers' do
    DB[:flowers].insert(name: params[:name], color: params[:color])
    redirect '/'
  end
end