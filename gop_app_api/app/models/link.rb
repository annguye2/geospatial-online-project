class Link < ApplicationRecord
  belongs_to :feature_id
  belongs_to :project_id
end
