# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Flower.create(name: 'Tulip', price: Faker::Commerce.price)
Flower.create(name: 'Rose', price: Faker::Commerce.price)
Flower.create(name: 'African Daisy', price: Faker::Commerce.price)
Flower.create(name: 'Alyssum', price: Faker::Commerce.price)
Flower.create(name: 'Amaryllis', price: Faker::Commerce.price)
Flower.create(name: 'Peace Lily', price: Faker::Commerce.price)
Flower.create(name: 'Petunia', price: Faker::Commerce.price)
Flower.create(name: 'Plume Celosia', price: Faker::Commerce.price)
10.times do
    Customer.create({
        name: Faker::RickAndMorty.character,
        address: Faker::RickAndMorty.location,
        email: Faker::Internet.email
})
end