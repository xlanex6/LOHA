class Tag < ApplicationRecord
  belongs_to :users
  validates :name, prescence: true
  validates :user_id, prescence: true

end
