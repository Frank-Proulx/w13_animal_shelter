FactoryBot.define do
  factory(:animal) do
    name {Faker::Creature::Cat.name}
    species {'Cat'}
    age {rand(1..15)}
    breed {Faker::Creature::Cat.breed}
    sex {Faker::Gender.binary_type}
  end
end