class CreateLinktables < ActiveRecord::Migration[5.0]
  def change
    create_table :linktables do |t|
      t.references :feature, foreign_key: true
      t.references :project, foreign_key: true
      t.string :creator

      t.timestamps
    end
  end
end
