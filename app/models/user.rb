class User < ActiveRecord::Base
    has_secure_password
    
    validates_presence_of :username, :email, :password 
    validates_uniqueness_of :username, :email

    has_and_belongs_to_many :characters
end 