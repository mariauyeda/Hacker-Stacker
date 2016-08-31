class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :value, null: false

      t.integer :user_id

      t.integer :votable_id
      t.string :votable_type

      t.timestamps null: false
    end

    add_index :votes, [:votable_type, :votable_id]
  end
end
