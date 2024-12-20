class Organ < ApplicationRecord
  ROBOT_TYPE = ["humanoid", "autonomous", "industrial", "service", "companion"]

  validates :name, :description, :price, :robot_type, presence: true
  validates :age, numericality: { greater_than_or_equal_to: 18 }, presence: :true
  belongs_to :user
  has_many :orders, dependent: :destroy
  has_one_attached :photo

  def self.robot_type
    ROBOT_TYPE
  end
end
