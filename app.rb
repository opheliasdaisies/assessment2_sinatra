require "bundler"
Bundler.require

set :database, "sqlite3:///spacecats.db" #had to look up syntax for connecting database

module Space
  class App < Sinatra::Application

    get "/" do
      "test"
    end

  end
end