require "bundler"
Bundler.require

module Space
  class App < Sinatra::Application

    get "/" do
      "test"
    end

  end
end