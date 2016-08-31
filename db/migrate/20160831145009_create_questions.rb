class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title, null:false, length: 64
      t.string :text, null:false, length: 255

      t.integer :user_id

      t.timestamps null:false
    end
  end
end
