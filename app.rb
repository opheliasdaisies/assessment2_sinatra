require "bundler"
Bundler.require

set :database, "sqlite3:///spacecats.db" #had to look up syntax for connecting database

module Space
  class App < Sinatra::Application

    get "/index" do
      #index
    end

    get "/new" do
      #new
    end

    post "/index" do
      #create
    end

    get "/:id/" do
      #show
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