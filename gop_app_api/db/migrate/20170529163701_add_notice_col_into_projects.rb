class AddNoticeColIntoProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :notice, :integer
  end
end
