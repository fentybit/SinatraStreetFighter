class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t| 
      t.string :name 
      t.string :image
      t.integer :character_id 
    end 
  end
end
