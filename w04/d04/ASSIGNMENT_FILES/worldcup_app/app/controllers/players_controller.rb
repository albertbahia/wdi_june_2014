class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
    @teams = Team.all
  end

  def create
    @player = Player.new(player_params)
    @teams = Team.all
    if @player.save
      redirect_to @player
    else
      render :new
    end
  end

  def edit
    @player = Player.find(params[:id])
    @teams = Team.all
  end

  def update
    @player = Player.find(params[:id])
    if @player.update(player_params)
      redirect_to @player
    else
      render :edit
    end
  end

  def destroy
    @player = Player.find(params[:id])
    if @player.destroy
      redirect_to players_path
    else
      render :edit
    end
  end

  private

  def player_params
    return params.require(:player).permit(:name, :photo_url, :position, :skill_level, :team_id)
  end

end