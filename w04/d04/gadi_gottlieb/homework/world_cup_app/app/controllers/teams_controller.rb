class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
    @groups = Group.all
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to team_path(@team)
    else
      render :new
    end
  end

  def show
    @team = Team.find(params[:id])
  end

  def edit
    @team = Team.find(params[:id])
    @groups = Group.all
  end

  def update
    @team = Team.find(params[:id])
    if @team.update(team_params)
      redirect_to team_path(@team)
    else
      render :edit
    end
  end

  def destroy
    @team = Team.find(params[:id])
    if @team.destroy
      redirect_to (teams_path)
    else
      redirect_to team_path(@team)
    end
  end

  private
  def team_params
    params.require(:team).permit(:country, :flag_url, :manager_name, :group_id)
  end

end
