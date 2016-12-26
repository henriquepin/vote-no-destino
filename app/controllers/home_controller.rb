class HomeController < ApplicationController
  def index
    @place = Place.create
  end
end
