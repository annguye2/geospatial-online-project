class DropProjectIdInFeatureTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :features, :project_id
  end
end
