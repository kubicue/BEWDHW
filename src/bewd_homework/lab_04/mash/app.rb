require 'sinatra'
require 'httparty'

 get '/' do
   @articles = HTTParty.get "http://mashable.com/stories.json"
   erb :index
 end
