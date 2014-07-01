class TweedsController < ApplicationController

  def index
    @tweeds = Tweed.order('created_at DESC').all
  end

  def new

  end

  def create
    new_tweed = Tweed.create!(params[:tweed].permit!)
    redirect_to("/tweeds/#[new_tweed.id]")
  end

  def show
    @tweed = Tweed.find(params[:id])
  end

  def edit
    @tweed = Tweed.find(params[:id])
  end

  def update
    tweed_update = Tweed.find(params[:id])
    tweed_update.update!(params[:tweed].permit!)
    redirect_to("/tweeds/#[tweed_update.id]")
  end

  def delete
    tweelete = Tweed.find(params[:id])
    tweelete.destroy
    redirect_to("/tweeds")
  end





end




  #
  #
  # get 'tweeds' => 'tweeds#index'
  # get 'tweeds/new' => 'tweeds#new'
  # post 'tweeds'  => 'tweeds#create'
  # get 'tweeds/:id' => 'tweeds#show'
  # get 'tweeds/:id/edit' => 'tweeds#edit'
  # post 'tweeds/:id' => 'tweeds#update'
  # post 'tweeds/:id/delete' => 'tweeds#delete'
