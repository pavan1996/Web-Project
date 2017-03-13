class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :note_id
      t.integer :book_id

      t.timestamps null: false
    end
    add_index :carts, :note_id
    add_index :carts, :book_id
  end
end
