require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mustache/sinatra'

Sinatra.register Mustache::Sinatra

require 'views/layout'

set :mustache, {
  :views     => 'views/',
  :templates => 'templates/'
}

get '/' do
  mustache :hello
end



























