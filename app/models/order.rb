class Order < ApplicationRecord
  belongs_to :user
  belongs_to :organ

  validates :user, presence: true
  validates :organ, presence: true
end
