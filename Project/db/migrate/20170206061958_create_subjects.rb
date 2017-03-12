class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.integer :category_id
      t.string :subject_name

      t.timestamps null: false
    end
    add_index :subjects, :category_id
  end
end
