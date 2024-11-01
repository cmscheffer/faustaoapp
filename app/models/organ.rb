class Organ < ApplicationRecord
  BLOODY_TYPE = ["A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"]

  validates :name, :description, :price, :img_url, :bloody_type, presence: true
  validates :age, numericality: { greater_than_or_equal_to: 18 }, presence: :true
  belongs_to :user
  belongs_to :order

  def self.bloody_type
    BLOODY_TYPE
  end
end
