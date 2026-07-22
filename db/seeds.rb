puts "🌱 Seeding data..."

users = 10.times.map do
  User.create(
    name: Faker::Name.name
  )
end

50.times do
  game = Game.create(
    title: Faker::Game.title,
    genre: Faker::Game.genre,
    platform: Faker::Game.platform,
    price: rand(0..60)
  )

  rand(1..5).times do
    Review.create(
      score: rand(1..10),
      comment: Faker::Lorem.sentence,
      game: game,
      user: users.sample
    )
  end
end

puts "🌱 Done seeding!"
