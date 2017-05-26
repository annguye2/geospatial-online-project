class ChangeColumnNameInFeaturesTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :features, :name, :category
  end
end
