class RemovePublicColIntoProjects < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :public 
  end
end
