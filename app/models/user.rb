class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :birthdate, :first_name, :last_name, :address, :zip_code, :city, presence: true
  validates :birthdate, comparison: { less_than_or_equal_to: Date.today }

  validates :first_name, :last_name, :address, :city, length: { maximum: 50 }

  validates :zip_code, format: { with: /\A(?!01000|99999)(0[1-9]\d{3}|[1-9]\d{4})\z/ }
end
