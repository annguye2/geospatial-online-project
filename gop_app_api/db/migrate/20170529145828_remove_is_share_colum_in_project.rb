class RemoveIsShareColumInProject < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :is_shared
  end
end
