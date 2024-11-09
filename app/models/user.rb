class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :organs, dependent: :destroy
  has_many :orders, dependent: :destroy

  def full_name
    "#{name} #{last_name}"
  end
end
