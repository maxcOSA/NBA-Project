class SeasonsController < ApplicationController
  before_action :current_season, only: [:show, :edit, :update, :destroy]

  def index
    @seasons = Season.all
  end

  def show

  end

  def new
    @season = Season.new
  end

  def create
    @season = Season.create(season_params)

    redirect_to season_path(@season)
  end

  def edit

  end

  def update
    @season.update(season_params)

    redirect_to season_path(@season)
  end

  def destroy
    @season.destroy

    redirect_to seasons_path
  end

  private
  def season_params
    params.require(:season).permit(:year_id)
  end

  def current_season
    @season = Season.find(params[:id])
  end
end
