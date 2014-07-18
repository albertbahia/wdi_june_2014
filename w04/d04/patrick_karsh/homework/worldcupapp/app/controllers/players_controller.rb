class PlayersController < ApplicationController 
	def index
	  @players = Player.all
	end

	def show
	  @player = Player.find(params[:id])
	end

	def new
	  @player = Player.new
	end

	def create
	  @player = Player.create(player_params)
	  redirect_to player_path(@player)
	end

	def edit
	  @player = Player.find(params[:id])
	end

	def update
	  @player = Player.find(params[:id])
		if @player.update(player_params)
		  redirect_to player_path(@player)
		else
		  redirect_to edit_user_path(@player)
		end
	end

	def destroy
	  @player = Player.find(params[:id])
		if @player.destroy
		 redirect_to players_path
		else
		  redirect_to player_path(@player)
		end
	end	
	def player_params
		params[:player].permit(:team_id, :name, :photo_url, :position, :skill)
	end

end
