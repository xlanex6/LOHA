class Category < ApplicationRecord
  has_many :categorizings
  has_many :users, through: :categorizings
end
