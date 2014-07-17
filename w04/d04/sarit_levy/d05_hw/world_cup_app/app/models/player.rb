class Player < ActiveRecord::Base

  belongs_to :team

 # :position = ["Forward", "Defender", "Midfielder", "Goalkeeper"]
 # :skill_level = [1..100]

  validates_presence_of :name, :photo_url, :position , :skill_level,

end
