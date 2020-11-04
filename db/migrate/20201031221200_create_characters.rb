class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :quote
      t.string :image 
      t.string :video, default:"https://www.youtube.com/watch?time_continue=3&v=fnH0kvv8qdk&feature=emb_logo"
      t.integer :user_id
    end 
  end
end