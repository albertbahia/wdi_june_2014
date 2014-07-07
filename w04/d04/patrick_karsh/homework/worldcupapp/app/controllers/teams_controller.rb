class TeamsController < ApplicationController 
	def index
	  @teams = Team.all
	end

	def show
	  @team = Team.find(params[:id])
	end

	def new
	  @team = Team.new
	end

	def create
	  @team = Team.create(team_params)
	  redirect_to team_path(@team)
	end

	def edit
	  @team = Team.find(params[:id])
	end

	def update
	  @team = Team.find(params[:id])
		if @team.update(team_params)
		  redirect_to team_path(@team)
		else
		  redirect_to edit_user_path(@team)
		end
	end

	def destroy
	  @team = Team.find(params[:id])
		if @team.destroy
		 redirect_to teams_path
		else
		  redirect_to team_path(@team)
		end
	end

	private

	# def team_params
	#   params.require(:team).permit(group_id:, country:, flag_url:, manager:)
	# end
end
	