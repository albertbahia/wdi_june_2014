class AddImgUrlToPaintings < ActiveRecord::Migration
  def change
    add_column :paintings, :img_url, :text
  end
end
