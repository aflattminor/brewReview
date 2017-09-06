class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id, null: false
      t.integer :brewpub_id, null: false
      t.integer :rating, null: false
      t.text :body
      t.string :header
      t.integer :vote_count

      t.timestamps
    end
  end
end
