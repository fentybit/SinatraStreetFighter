class Move < ActiveRecord::Base 
    validates_uniqueness_of :name

    belongs_to :character 
    has_and_belongs_to_many :stages
end 