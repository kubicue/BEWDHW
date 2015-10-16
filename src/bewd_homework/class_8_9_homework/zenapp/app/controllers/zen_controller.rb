class ZenController < ApplicationController
  # define a match path on route.rb /wiz
  def wiz
    @zenmsg = HTTParty.get('https://api.github.com/zen').parsed_response

    url = 'https://api.data.gov/nasa/planetary/apod?date=2015-10-15&api_key=y5O546jpk0hCzhxuK3nXqKhslyaTDimdGrey7eEr'
    @nature_url = HTTParty.get(url).parsed_response

  end

end
