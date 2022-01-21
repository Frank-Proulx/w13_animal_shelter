# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
class Seed

  def self.begin
    seed = Seed.new
    seed.generate_animals
  end

  def generate_animals
    10.times do |i|
      animal = Animal.create!(
        name: Faker::Creature::Dog.name,
        type: "Dog",
        age: rand(1..20),
        breed: Faker::Creature::Dog.breed,
        sex: Faker::Gender.binary_type
      )
      puts "Animal #{i}: Name is #{animal.name}, type is #{animal.type}, age is #{animal.age}, breed is #{animal.breed}, and sex is #{animal.sex}."
    end
    10.times do |i|
      animal = Animal.create!(
        name: Faker::Creature::Cat.name,
        type: "Cat",
        age: rand(1..20),
        breed: Faker::Creature::Cat.breed,
        sex: Faker::Gender.binary_type
      )
      puts "Animal #{i}: Name is #{animal.name}, type is #{animal.type}, age is #{animal.age}, breed is #{animal.breed}, and sex is #{animal.sex}."
    end
  end
end

Seed.begin
