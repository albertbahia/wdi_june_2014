class GroupsController < ApplicationController

  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def show
    @group = Group.find(params[:id])
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to(group_path(@group))
    else
      render(:new)
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    if Group.update(group_params)
      redirect_to(group_path(@group))
    else
      render(:edit)
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
  end

  def group_params
    params.require(:group).permit(:name)
  end

end
