class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def show
    @player = Player.find(params[:id])
    team_lookup_id = @player.team_id
    @team = Team.find(team_lookup_id)
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to(player_path(@player))
    else
      render(:new)
    end
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    if @player.update(player_params)
      redirect_to(player_path(@player))
    else
      render(:edit)
    end
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
  end

  def player_params
    params.require(:player).permit(:name, :photo_url, :position,
    :skill_level, :team_id)
  end

end
