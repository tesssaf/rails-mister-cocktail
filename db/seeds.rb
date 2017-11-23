# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning seeds..."
Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all

puts "creating seeds..."
lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")
mint = Ingredient.create(name: "mint leaves")

mojito = Cocktail.create(name: "Mojito")
spritz = Cocktail.create(name: "Spritz")
mai_tai = Cocktail.create(name: "Mai tai")

puts "Seeds done."
Dose.create(description: "6cl", ingredient: lemon, cocktail: mojito)
Dose.create(description: "10cl", ingredient: mint, cocktail: spritz)
Dose.create(description: "5cl", ingredient: mint, cocktail: mai_tai)
