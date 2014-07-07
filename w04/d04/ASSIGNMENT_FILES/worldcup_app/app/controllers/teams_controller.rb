class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
    @groups = Group.all
  end

  def create
    @team = Team.new(team_params)
    @groups = Group.all
    if @team.save
      redirect_to @team
    else
      render :new
    end
  end

  def edit
    @team = Team.find(params[:id])
    @groups = Group.all
  end

  def update
    @team = Team.find(params[:id])
    @groups = Group.all
    if @team.update(team_params)
      redirect_to @team
    else
      render :edit
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @groups = Group.all
    if @team.destroy
      redirect_to teams_path
    else
      render :edit
    end
  end

  private

  def team_params
    return params.require(:team).permit(:country, :flag_url, :manager,
     :group_id)
  end

end