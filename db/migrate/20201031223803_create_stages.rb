class CreateStages < ActiveRecord::Migration
  def change
    create_table :stages do |t| 
      t.string :name
      t.string :image
    end 
  end
end
