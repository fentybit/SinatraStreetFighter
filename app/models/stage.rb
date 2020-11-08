class Stage < ActiveRecord::Base 
    validates_uniqueness_of :name
    
    has_and_belongs_to_many :moves
    has_many :characters, through: :moves  
end 