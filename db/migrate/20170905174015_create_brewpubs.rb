class CreateBrewpubs < ActiveRecord::Migration[5.1]
  def change
    create_table :brewpubs do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip, null: false
      t.text :description, null: false
      t.string :website_url, null: false
      t.string :img_url, null: false
      t.string :logo_url, null: false
      t.string :phone_number, null: false
      t.string :contact_email, null: false
      t.integer :creator_id, null: false
      t.integer :rating
      t.string :hours
      t.string :beers
      t.boolean :tours
      t.string :facebook_url
      t.string :twitter_url
      t.string :instagram_url

      t.timestamps
    end

    add_index :brewpubs, [:name, :address], unique: true
  end
end
