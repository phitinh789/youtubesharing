class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.integer :video_id
      t.integer :vote_status
      t.timestamps
    end
  end
end
