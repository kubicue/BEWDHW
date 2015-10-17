class ZenController < ApplicationController
  # define a match path on route.rb /wiz
  #Hey I control everything on this path /wiz
  def wiz
    @zenmsg = HTTParty.get('https://api.github.com/zen').parsed_response

    url = 'https://api.data.gov/nasa/planetary/apod?date=2015-10-15&api_key=y5O546jpk0hCzhxuK3nXqKhslyaTDimdGrey7eEr'
    @nature_url = HTTParty.get(url).parsed_response
    wf = 'https://api.forecast.io/forecast/8b0e1f8b53a5e7e0e6b2a1b2ced3ceda/32.7150,-117.1625'
    @weather = HTTParty.get(wf).parsed_response
  end

end
