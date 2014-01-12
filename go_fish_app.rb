require 'rubygems'
require 'sinatra'
require 'slim'

get '/' do
  slim :SamplePage
end

# margin-left: -20px;