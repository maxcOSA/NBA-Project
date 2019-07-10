class CompareController < ApplicationController
  def index
    @seasons = Season.all
  end
end
