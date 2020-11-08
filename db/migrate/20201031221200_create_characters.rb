class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :quote
      t.text :bio
      t.string :image 
      t.string :video
    end 
  end
end