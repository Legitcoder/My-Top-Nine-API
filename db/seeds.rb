# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

test = User.create(username: "test", password: "123456")

music = Category.create(name: "Music")
videoGames = Category.create(name: "Video Games")
films = Category.create(name: "Films")


gears = Item.create(name: "Gears of War", image_url: Faker::Avatar.image,  category: videoGames)
halo = Item.create(name: "Halo 3", image_url: Faker::Avatar.image, category: videoGames)

avengers = Item.create(name: "The Avengers", image_url: Faker::Avatar.image, category: films)
darkKnight = Item.create(name: "The Dark Knight", image_url: Faker::Avatar.image, category: films)

madWorld = Item.create(name: "Mad World", image_url: Faker::Avatar.image, category: music)
loseYourself = Item.create(name: "Lose Yourself", image_url: Faker::Avatar.image, category: music)

Favorite.create(name: gears.name, image_url: gears.image_url, position: 1, user: test)
Favorite.create(name: loseYourself.name, image_url: loseYourself.image_url, position: 2, user: test)