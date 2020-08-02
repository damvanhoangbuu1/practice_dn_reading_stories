class Category < ApplicationRecord
  has_many :storys, dependent: :delete_all
end
