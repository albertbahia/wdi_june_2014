class ChangeDataTypeForPhotoUrl < ActiveRecord::Migration
  def change
     change_column :players, :photo_url, :text
  end
end
