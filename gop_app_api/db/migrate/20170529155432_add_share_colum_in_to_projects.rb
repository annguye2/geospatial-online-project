class AddShareColumInToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :shared, :boolean, null: false, default: false
  end
end
