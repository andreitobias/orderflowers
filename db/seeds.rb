# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Flower.create(name: 'Tulip', price: 10)
Flower.create(name: 'Rose', price: 10)
Flower.create(name: 'African Daisy', price: 10)
Flower.create(name: 'Alyssum', price: 10)
Flower.create(name: 'Amaryllis', price: 10)
Flower.create(name: 'Peace Lily', price: 10)
Flower.create(name: 'Petunia', price: 10)
Flower.create(name: 'Plume Celosia', price: 10)
10.times do
    Customer.create({
        name: 'Rick Sanchez',
        address: 'Earth',
        email: 'rick@test.com'
})
end