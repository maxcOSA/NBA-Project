class AwardsController < ApplicationController
  before_action :current_award, only: [:show, :edit, :update, :destroy]

  def index
    @awards = Award.all
  end

  def show

  end

  def new
    @award = Award.new
  end

  def create
    @award = Award.create(award_params)

    redirect_to award_path(@award)
  end

  def edit

  end

  def update
    @award.update(award_params)

    redirect_to award_path(@award)
  end

  def destroy
    @award.destroy

    redirect_to awards_path
  end

  private
  def award_params
    params.require(:award).permit(:year, :MVP, :DPOY, :MIP, :ROY, :SMOY, :COY, :ASMVP, :FMVP)
  end

  def current_award
    @award = Award.find(params[:id])
  end
end
