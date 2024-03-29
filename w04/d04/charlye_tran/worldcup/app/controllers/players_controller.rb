class PlayersController < ApplicationController
  def index
    @players = Player.all
  end
  def new
    @player = Player.new
  end
  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to(player_path(@player))
    else
      render(:new)
    end
  end
  def show
    @player = Player.find(params[:id])
  end

  def edit
    @player = Player.find(params[:id])
    @teams = Team.all
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
    redirect_to(players_path)
  end

  def player_params
    params.require(:player).permit(:name, :position, :skill_level, :photo_url, :team_id)
  end

end
