class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, default: "username"
      t.string :email, default: "email"
      t.string :password_digest, default: "password"
    end 
  end
end
