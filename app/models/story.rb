class Story < ApplicationRecord
  has_many :actions, dependent: :delete_all
  has_many :payment_historys, dependent: :delete_all
  has_many :chapters, dependent: :delete_all
  belongs_to :user
  belongs_to :category

  def self.search term
    if term
      where("story_name LIKE :search OR author LIKE :search", search: "%#{term}%")
    else
      order("created_at DESC")
    end
  end
end
