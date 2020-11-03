class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :username, default: "username"
      t.string :email, default: "email"
      t.string :password_digest, default: "password"

      t.string :name
      t.string :quote
      t.string :image 
      t.string :video, default:"https://www.youtube.com/watch?time_continue=3&v=fnH0kvv8qdk&feature=emb_logo"
    end 
  end
end