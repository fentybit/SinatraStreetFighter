class CreateStagesMoves < ActiveRecord::Migration[5.2]
  def change
    create_table :moves_stages do |t| 
      t.integer :stage_id 
      t.integer :move_id
    end 
  end
end
