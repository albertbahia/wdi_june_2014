class GroupsController < ApplicationController 
	def index
	  @groups = Group.all
	end

	def show
	  @group = Group.find(params[:id])
	end

	def new
	  @group = Group.new
	end

	def create
	  @group = Group.create(group_params)
	  redirect_to group_path(@group)
	end

	def edit
	  @group = Group.find(params[:id])
	end

	def update
	  @group = Group.find(params[:id])
		if @group.update(group_params)
		  redirect_to group_path(@group)
		else
		  redirect_to edit_user_path(@group)
		end
	end

	def destroy
	  @group = Group.find(params[:id])
		if @group.destroy
		 redirect_to groups_path
		else
		  redirect_to group_path(@group)
		end
	end	
end