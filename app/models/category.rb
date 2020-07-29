class Category < ApplicationRecord
  has_many :stories, dependent: :delete_all

  scope :order_by_created_at, -> { order(created_at: :DESC)}
end
