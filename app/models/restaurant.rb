class Restaurant < ApplicationRecord
  has_many :reviews
  validates_presence_of :name
  validates :address, presence: true
  validates :category, presence: true
end
