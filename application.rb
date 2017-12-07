require 'sinatra'
require 'pry'

class Application < Sinatra::Base
  get '/' do
    'Congratulations! You are awasome! Service works!'
  end
end
