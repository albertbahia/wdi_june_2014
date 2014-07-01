class AddTimestampToTweeds < ActiveRecord::Migration
  def change
    add_column :tweeds, :timestamp, :datetime
  end
end
