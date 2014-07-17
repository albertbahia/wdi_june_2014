class PlayersController < ApplicationController

	def index
		@players = Player.all
	end

	def new
		@player = Player.new
	end

	def create
		@player = Player.create(player_params)
		if @player.save
			redirect_to player_path(@player)
		else
			render :new
		end
	end

	def show
		@player = Player.find(params[:id])
		@team = Team.new
	end

	def edit
		@player = Player.find(params[:id])
	end

	def update
		@player = Player.find(params[:id])

		if @player.update(player_params)
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

	def search
	end

	private
	def player_params
		params.require(:player).permit(:name, :photo_url, :position, :skill_level, :team_id)
	end

end
