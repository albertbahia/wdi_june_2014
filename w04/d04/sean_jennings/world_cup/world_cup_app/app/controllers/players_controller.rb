class PlayersController < ApplicationController

  def index
    @players = Players.all
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to player_path(@player)
    else
      redirect_to new_player_path
    end
  end

  def show
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    if @player.save
      redirect_to player_path(@player)
    else
      redirect_to edit_player_path(@player)
    end
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    redirect_to players_path
  end

end