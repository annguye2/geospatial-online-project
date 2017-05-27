class Feature < ApplicationRecord
  has_many :linktables
  has_many :projects, through: :linktables
end
