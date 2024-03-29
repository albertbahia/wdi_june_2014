class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.create(team_params)
    if @team.save
      redirect_to(team_path(@team))
    else
      render :new
    end
  end

  def show
    @team = Team.find(params[:id])
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.update(team_params)
    if @team.save
      redirect_to(team_path(@team))
    else
      render :edit
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to(teams_path)
  end

  private
  def team_params
    params.require(:team).permit(:country, :flag_url, :manager_name)
  end

end
