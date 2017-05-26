class ChangeColumnNameCategoryToTypeInFeaturesTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :features, :category, :type
  end
end
