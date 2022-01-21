FactoryBot.define do
  factory(:cat) do
    name {Faker::Creature::Cat.name}
    species {"Cat"}
    age {rand(1..15)}
    breed {Faker::Creature::Cat.breed}
    sex {Faker::Gender.binary_type}
  end

  factory(:dog) do
    name {Faker::Creature::Dog.name}
    species {"Dog"}
    age {rand(1..15)}
    breed {Faker::Creature::Dog.breed}
    sex {Faker::Gender.binary_type}
  end
end