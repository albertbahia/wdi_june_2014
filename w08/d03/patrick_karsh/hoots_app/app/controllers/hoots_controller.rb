class HootsController < ApplicationController


  def create
    @hoot = Hoot.create(hoot_params)
  end

  def edit
    @hoot = Hoot.find(params[:id])
  end

  def update
    @hoot = Hoot.find(params[:id])
    @hoot.update(hoot_params)
  end

  def destroy
    @hoot = Hoot.find(params[:id])
    @hoot.destroy
  end

  def hoot_params
    params.require(:hoot).permit(:content, :author)
  end
end
