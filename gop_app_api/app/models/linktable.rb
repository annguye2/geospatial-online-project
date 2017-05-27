class Linktable < ApplicationRecord
  belongs_to :feature
  belongs_to :project
end
