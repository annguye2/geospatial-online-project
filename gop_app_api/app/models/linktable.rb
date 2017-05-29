class Linktable < ApplicationRecord
  belongs_to :feature
  belongs_to :project

  validates_uniqueness_of :feature_id, scope: :project_id
  validates_uniqueness_of :project_id, scope: :feature_id
end
