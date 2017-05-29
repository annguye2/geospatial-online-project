class AddPublicColIntoProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :public, :string
  end
end
