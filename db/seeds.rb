# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Usr.destroy_all

Usr.create(name: "guantai" , email: "jp@gmail.com", password: "1234")


# Destination.create(name: "Malindi", image: " xyz", location: "description", description: "travel safe", price: "1000")
