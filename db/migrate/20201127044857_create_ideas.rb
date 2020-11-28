class CreateIdeas < ActiveRecord::Migration[6.0]
  def change
    create_table :ideas do |t|
      t.integer :user_id, null: false, foreign_key: true
      t.string :title, null: false
      t.text :idea_1, null: false
      t.text :idea_2, null: false
      t.text :idea_3, null: false
      t.timestamps
    end
  end
end
