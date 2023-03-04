puts "🌱 Seeding spices..."

# Seed your database here
# Seed your database here.times do
  user = User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "password"
  )
end

50.times do
  pets = Pet.create(
      name: Faker::Creature::Animal.name,
      description: Faker::Lorem.sentence,
      breed: Faker::Creature::Animal.name,
      image: Faker::LoremFlickr.image,
      status: ["Adopted", "NotAdopted"].sample
      user_id: rand(1..20)
  )
end

puts "✅ Done seeding!"

