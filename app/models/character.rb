class Character < ActiveRecord::Base 
    has_secure_password
    has_many :moves 
    has_many :stages, through: :moves 

    # slug instance method

    # slug class method
end 