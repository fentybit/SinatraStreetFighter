class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :username 
      t.string :email 
      t.string :password_digest 

      t.string :name
      t.string :quote
      t.string :image 
      t.string :video, default:"https://www.youtube.com/watch?time_continue=3&v=fnH0kvv8qdk&feature=emb_logo"
      t.integer :user_id
    end 
  end
end