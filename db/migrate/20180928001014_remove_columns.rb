class RemoveColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :rooms, :created_by
    remove_column :rooms, :updated_by
  end
end
