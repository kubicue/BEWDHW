class MainframeController < ApplicationController
  protect_from_forgery 
  def home
  end

  def login
  end

  def mainframe
    code = '1245'

    if params['code'] == code
      # nothing, render template
    else
      redirect_to '/failed'
    end
  end

  def failed
  end

end
