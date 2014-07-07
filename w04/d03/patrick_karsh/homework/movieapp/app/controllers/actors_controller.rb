class ActorsController < ApplicationController 
	
	def index 
		@actors = Actor.all 
	end

	def show
		@actor = Actor.find(params[:id])
	end 

	def new 
		@actor = Actor.new 
	end 

	def create
		@actor = Actor.create(actor_params)
		redirect_to actor_path(@actor)
	end 

	def edit
		@actor = Actor.find(params[:id])   
	end

	def update 
		@actor = Actor.find(params[:id])
		if @actor.update(actor_params)
			redirect_to actor_path(@actor)
		else 
			redirect_to edit_user_path(@actor)
		end 
	end 

	def destroy 
		@actor = Actor.find(params[:id])
		if @actor.destroy 
			redirect_to actor_path 
		else
			redirect_to actor_path(@actor)
		end 
	end 
	private

	def actor_params
		params.require(:actor).permit(:name, :photo_url)
	end 
end