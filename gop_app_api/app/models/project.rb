class Project < ApplicationRecord
  belongs_to :user
  has_many   :linktables
  has_many   :features, through: :linktables
end
