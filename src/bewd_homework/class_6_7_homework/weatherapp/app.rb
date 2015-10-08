require 'sinatra'
require 'httparty'


get '/' do
  #API call to forcast io [San Diego, Ca]
  @url = HTTParty.get 'https://api.forecast.io/forecast/8b0e1f8b53a5e7e0e6b2a1b2ced3ceda/32.7150,-117.1625'

  erb :index
end
