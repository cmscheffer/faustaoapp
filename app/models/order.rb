class Order < ApplicationRecord
  belongs_to :user
  belongs_to :organ
  has_many :organs
end
