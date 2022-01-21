class Animal < ApplicationRecord
  validates :name, presence: true
  validates :species, presence: true
  validates :age, presence: true
  validates :breed, presence: true
  validates :sex, presence: true
  validates :age, numericality: { only_integer: true }
  scope :search_breed, -> (breed_parameter) { where("breed ilike ?", "#{breed_parameter}")}
  scope :search_species, -> (species_parameter) { where("species ilike ?", "#{species_parameter}")}
  scope :search_sex, -> (sex_parameter) { where("sex ilike ?", "#{sex_parameter}")}
end