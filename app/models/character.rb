class Character < ActiveRecord::Base 
    belongs_to :user 
    has_many :moves 
    has_many :stages, through: :moves 

    def slug 
        self.name.downcase.split.join("-")
    end 

    def self.find_by_slug(slug)
        self.all.find {|character| character.slug == slug}
    end 
end 