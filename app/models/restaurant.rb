class Restaurant < ApplicationRecord
  CUISINE = %w(Chinese Italian Japanese French Belgian)
  has_many :reviews, dependent: :destroy
  validates_presence_of :name
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: self::CUISINE}
end


