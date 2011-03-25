require 'sinatra/base'
require 'mustache/sinatra'

class App < Sinatra::Base
  register Mustache::Sinatra
  require 'views/layout'

  set :mustache, {
    :views     => 'views/',
    :templates => 'templates/'
  }

  get '/' do
    @title = "Mustache + Sinatra = Wonder"
    hamlbar :index
  end

  get '/other' do
    hamlbar :other
  end

  get '/nolayout' do
    content_type 'text/plain'
    hamlbar :nolayout, :layout => false
  end
end
