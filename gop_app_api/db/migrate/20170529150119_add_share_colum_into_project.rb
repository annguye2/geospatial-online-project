class AddShareColumIntoProject < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :shared, :boolean
  end
end
