require 'sinatra'
require 'httparty'
get '/' do
  #API call to mashable.com
  @articles = HTTParty.get "http://mashable.com/stories.json"
  erb :index
end
