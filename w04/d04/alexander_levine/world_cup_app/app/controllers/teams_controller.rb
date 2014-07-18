class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def show
    @team = Team.find(params[:id])
    group_lookup_id = @team.group_id
    @group = Group.find(group_lookup_id)
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to(team_path(@team))
    else
      render(:new)
    end
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    if Team.update(team_params)
      redirect_to(team_path(@team))
    else
      render(:edit)
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
  end

  def team_params
    params.require(:team).permit(:country, :flag_url, :group_id)
  end

end
