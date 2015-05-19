class CreateWishlists < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|
      t.string :name
      t.string :website
      t.string :price
      t.string :image_url
      t.integer :user_id

      t.timestamps

    end
  end
end
