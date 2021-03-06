# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Animal.destroy_all
class Seed
  def self.begin
    seed = Seed.new
    seed.generate_animals
  end

  def generate_animals
    30.times do |i|
      animal = Animal.create!(
        name: Faker::Creature::Dog.name,
        species: "Dog",
        age: rand(1..15),
        breed: Faker::Creature::Dog.breed,
        sex: Faker::Gender.binary_type,
        url: "https://placedog.net/#{rand(250..1000)}"
      )
      puts "Animal #{i}: Name is #{animal.name}, species is #{animal.species}, age is #{animal.age}, breed is #{animal.breed}, and sex is #{animal.sex}."
    end
    30.times do |i|
      animal = Animal.create!(
        name: Faker::Creature::Cat.name,
        species: "Cat",
        age: rand(1..15),
        breed: Faker::Creature::Cat.breed,
        sex: Faker::Gender.binary_type,
        url: "https://placekitten.com/#{rand(250..1000)}"
      )
      puts "Animal #{i}: Name is #{animal.name}, species is #{animal.species}, age is #{animal.age}, breed is #{animal.breed}, and sex is #{animal.sex}."
    end
  end
end

Seed.begin
