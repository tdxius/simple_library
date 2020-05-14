class Book < ApplicationRecord
  belongs_to :category

  validates :name, presence: true
  validates :author, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
end