class User < ApplicationRecord
  has_many :actions, dependent: :delete_all
  has_many :payment_historys, dependent: :delete_all
  has_many :storys, dependent: :delete_all
end
