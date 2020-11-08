class CreateCharactersUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :characters_users do |t| 
      t.integer :user_id 
      t.integer :character_id
    end 
  end
end
