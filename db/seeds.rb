# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
nick = User.create(firstname: "Nick", lastname: "Hall", password: "nick", email: "nickhall122@gmail.com",  telephone: "317-294-6339")
carolyn = User.create(firstname: "Carolyn", lastname: "Commons", password: "carolyn", email: "carolyn@gmail.com",  telephone: "317-436-1839")


abs = Exercise.create(name: "abs")
