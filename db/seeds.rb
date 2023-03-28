# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(name: "guantai" , email: "jp@gmail.com", password: "1234")

# Destination.create(name: "Malindi", image: " xyz", location: "description", description: "travel safe", price: "1000")
# create a sample book
# create a sample book
# create a sample book
destnation = Destnation.create(name: "New York City")
usr = Usr.create(name: "John Doe", email: "john@example.com", password_digest: "password")
book = Book.create(phone: "123-456-7890", date: "2023-04-01", capacity: 2, destnation_id: destnation.id, usr_id: usr.id)

# create a new payment
pay = Pay.create(amount: 9.99, method: "PesaPal", status: "pending", book_id: 1, usr_id: 10)



