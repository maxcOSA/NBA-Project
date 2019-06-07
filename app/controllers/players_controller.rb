class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]


  # GET /players
  # GET /players.json
  def index
    @players = Player.all
    @seasons = Season.all
  end

  def show
  end

  # GET /players/new
  def new
    @player = Player.new
  end

  # GET /players/1/edit
  def edit
  end

  # POST /players
  # POST /players.json
  def create
    @player = Player.create(player_params)

    redirect_to player_path(@player)
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update
    @player.update(player_params)

    redirect_to player_path(@player)
  end

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
    @player.destroy

    redirect_to seasons_path
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.require(:player).permit(:name, :Team, :position, :college, :years, :draftpick, :PPG, :RPG, :APG, :BPG, :SPG, :GP, :MPG, :fgp, :tpp, :ftp, :championships, :finalsAppearances, :award, :season_id)
    end
end
