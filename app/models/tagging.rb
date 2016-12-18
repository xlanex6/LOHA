class Tagging < ApplicationRecord
  belongs_to :users
  belongs_to :tags
end
