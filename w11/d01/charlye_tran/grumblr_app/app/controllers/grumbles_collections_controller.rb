class GrumblesCollectionController < ApplicationController

  def create
    @grumble_collection = Grumble.new(grumble_params)
    if @grumble_collection.save
      render json: @grumble_collection.to_json, status: 200
    end
  end

end
