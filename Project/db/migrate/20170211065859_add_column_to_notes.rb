class AddColumnToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :file, :string
  end
end
