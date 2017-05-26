class ChangeColumnTypeToDataTypeInFeatureTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :features, :type, :data_type
  end
end
