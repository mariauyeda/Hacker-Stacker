class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, null: false, length: 64
      t.string :last_name, null: false, length: 64
      t.string :username, null:false, length: 64
      t.string :email, null:false, length: 64, uniqueness: true
      t.string :password_hash, null:false

      t.timestamps null: false
    end
  end
end
