class CreateStageMoves < ActiveRecord::Migration
  def change
    create_table :stage_moves do |t| 
      t.integer :stage_id 
      t.integer :move_id
    end 
  end
end
