require 'sinatra'
require 'httparty'

get '/' do
  #API call to forcast io [San Diego, Ca]
  @zipcode = params[@zipcode]
  @url = HTTParty.get 'https://api.forecast.io/forecast/8b0e1f8b53a5e7e0e6b2a1b2ced3ceda/32.7150,-117.1625'

  erb :index
end
post '/wf' do
   @usr_zipcode = params['zipcode']

   # convert zipcode to geo coordinates
   hippo_response = HTTParty.get("http://api.zippopotam.us/us/#{@usr_zipcode}").parsed_response
   hippo_place = hippo_response['places'][0]
   @lat = hippo_place['latitude']
   @lng = hippo_place['longitude']

   # get weather using coordinates
   forecast = HTTParty.get("https://api.forecast.io/forecast/b6ec16c6daf2eaa642175d3a5d80d219/#{@lat},#{@lng}").parsed_response
   @temp = forecast['currently']['temperature']
   @hourly = forecast['hourly']['data']

   erb :ucast
end
