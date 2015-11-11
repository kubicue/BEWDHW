class TrackingController < ApplicationController
  def index
  end
  def new
  end
  def create
    ## Creating a Tracker
    # track code:EZ4000000004
    #carrier:"UPS" "USPS"
    #Easypost Shipping API Integration
    EasyPost.api_key = 'sFfFy3otb2g0hjzjWaqB6A'
    #Capture  tracking information
  tracker = EasyPost::Tracker.create({
  tracking_code: '',
  carrier: ''
})
  end
end

def show

end
