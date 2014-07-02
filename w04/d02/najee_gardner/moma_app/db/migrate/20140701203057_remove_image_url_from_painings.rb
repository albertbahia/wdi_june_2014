class RemoveImageUrlFromPainings < ActiveRecord::Migration
  def change
    remove_column :paintings, :image_url
  end
end
