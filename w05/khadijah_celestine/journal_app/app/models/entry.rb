class Entry < ActiveRecord::Base
belongs_to :user
validates :entry, :user_id, :content, presence: true
end
