class Move < ActiveRecord::Base 
    belongs_to :character 
    has_many :stage_moves 
    has_many :stages, through: :stage_moves
end 