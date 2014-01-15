require "bundler"
Bundler.require
require "./lib/spacecat"

set :database, "sqlite3:///spacecats.db" #had to look up syntax for connecting database

module Space
  class App < Sinatra::Application

    get "/index" do
      @spacecats = Spacecat.all

      haml :index
    end

    get "/new" do
      @spacecat = Spacecat.new

      erb :new
    end

    post "/index" do
      @spacecat = Spacecat.new(params[:spacecat])
      @spacecat.save

      redirect "/#{@spacecat.id}"
    end

    get "/:id" do
      @spacecat = Spacecat.find(params[:id])

      haml :show
    end

    # get "/:id/edit" do
    #   #edit
    # end

    # put "/:id" do
    #   #update
    # end

    # delete "/:id" do
    #   #destroy
    # end

  end
end