class Animal < ApplicationRecord
  validates :name, presence: true
  validates :species, presence: true
  validates :age, presence: true
  validates :breed, presence: true
  validates :sex, presence: true
  scope :search_breed, -> (breed_parameter) { where("breed ilike ?", "#{breed_parameter}")}
end