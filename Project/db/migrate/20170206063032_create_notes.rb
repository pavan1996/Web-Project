class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :user_id
      t.string :name
      t.integer :category_id
      t.integer :subject_id

      t.timestamps null: false
    end
    add_index :notes, :user_id
    add_index :notes, :category_id
    add_index :notes, :subject_id
  end
end
