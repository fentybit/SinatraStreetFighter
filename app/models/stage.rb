class Stage < ActiveRecord::Base 
    has_and_belongs_to_many :moves
    has_many :characters, through: :moves  
end 