class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.integer :user_id, null: false, foregin_key: true
      t.integer :idea_id, null: false, foregin_key: true
      t.timestamps
    end
  end
end
