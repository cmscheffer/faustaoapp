class Organ < ApplicationRecord
  ROBOT_TYPE = ["A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"]

  validates :name, :description, :price, :img_url, :robot_type, presence: true
  validates :age, numericality: { greater_than_or_equal_to: 18 }, presence: :true
  belongs_to :user

  def self.robot_type
    ROBOT_TYPE
  end
end
