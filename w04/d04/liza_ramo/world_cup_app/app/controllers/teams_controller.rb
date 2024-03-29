class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)

    if @team.save
      redirect_to(team_path(@team))
    else
      redirect_to new_team_path
    end
  end

  def show
    @team = Team.find(params[:id])
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])

    if @team.update(team_params)
      redirect_to(team_path(@team))
    else
      redirect_to edit_team_path(@team)
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to(teams_path)
  end

  private
  def team_params
    params.require(:team).permit(:country, :flag_url, :manager, :group_id)
  end

end
