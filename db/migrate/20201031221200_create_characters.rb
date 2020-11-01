class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :quote
      t.string :image 
      t.integer :user_id
    end 
  end
end