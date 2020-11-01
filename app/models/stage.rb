class Stage < ActiveRecord::Base 
    has_many :stage_moves 
    has_many :moves, through: :stage_moves
    has_many :characters, through: :moves  
end 