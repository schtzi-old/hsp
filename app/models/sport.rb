class Sport < ApplicationRecord
  has_many :courses

  validates :name, length: { maximum: 25 }, uniqueness: true
  validates :description, length: { maximum: 1000 }
  validates :stamina, :power, :effort, :coordination, :physical_contact, numericality: { only_integer: true, in: 1..5 }
  validates :name, :description, :stamina, :power, :effort, :coordination, :physical_contact, presence: true
end
