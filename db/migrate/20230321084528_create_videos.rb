class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.integer :user_id
      t.string :url, null: false
      t.string :title
      t.string :desc
      t.integer :like, default: 0
      t.integer :dislike, default: 0
      t.timestamps
    end
  end
end
