class RemoveTimestampFromTweeds < ActiveRecord::Migration
  def change
    remove_column :tweeds, :timestamp, :datetime
  end
end
