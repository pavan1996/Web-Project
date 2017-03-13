class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :publisher
      t.integer :category_id
      t.integer :subject_id
      t.float :price
      t.integer :user_id
      t.text :description

      t.timestamps null: false
    end
    add_index :books, :category_id
    add_index :books, :subject_id
    add_index :books, :user_id
  end
end
