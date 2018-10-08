require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate][:weight], params[:pirate][:height], params[:pirate][:name])
      params[:pirate][:ships].each do |ship|
        Ship.new(ship[:name], ship[:type], ship[:booty], @pirate)
      end
      @ships = @pirate.ships
      
      erb :'pirates/show'
    end
    # code other routes/actions here

  end
end
