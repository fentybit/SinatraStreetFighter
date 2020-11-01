class StageMove < ActiveRecord::Base 
    belongs_to :stage 
    belongs_to :move
end 