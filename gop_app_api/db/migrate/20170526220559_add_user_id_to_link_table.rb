class AddUserIdToLinkTable < ActiveRecord::Migration[5.0]
  def change
    add_column :linktables, :user_id, :integer
  end
end
