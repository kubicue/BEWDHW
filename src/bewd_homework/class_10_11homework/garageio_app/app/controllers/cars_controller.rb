class CarsController < ApplicationController
  def index
   @user = "Mark"
   @cars = Car.all
  end
end
