class AddIsSharedColumnToProjectTableAndSetToFalseAsDefault < ActiveRecord::Migration[5.0]
  def change
      add_column :projects, :is_shared, :boolean, default: false
  end
end
