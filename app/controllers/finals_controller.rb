class FinalsController < ApplicationController
  before_action :current_final, only: [:show, :edit, :update, :destroy]

  def index
    @finals = Final.all
  end

  def show

  end

  def new
    @final = Final.new
  end

  def create
    @final = Final.create(final_params)

    redirect_to final_path(@final)
  end

  def edit

  end

  def update
    @final.update(final_params)

    redirect_to final_path(@final)
  end

  def destroy
    @final.destroy

    redirect_to finals_path
  end

  private
  def final_params
    params.require(:final).permit(:year, :winner, :loser, :MVP, :games)
  end

  def current_final
    @final = Final.find(params[:id])
  end
end
