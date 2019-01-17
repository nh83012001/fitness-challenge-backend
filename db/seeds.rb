# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
nick = User.create(firstname: "Nick", lastname: "Hall", password: "nick", email: "nickhall122@gmail.com",  telephone: "317-294-6339")
carolyn = User.create(firstname: "Carolyn", lastname: "Commons", password: "carolyn", email: "carolyn@gmail.com",  telephone: "317-436-1839")


abs = Exercise.create(name: "abs")
squats = Exercise.create(name: "squats")

nick1 = Challenge.create(name: "First Challenge", start_date: "2019-01-17 21:50:09", end_date: "2019-01-17 21:50:09", close_date: "2019-01-17 21:50:09", owner_id: 1)
nick2 = Challenge.create(name: "Second Challenge", start_date: "2019-01-17 21:50:09", end_date: "2019-01-17 21:50:09", close_date: "2019-01-17 21:50:09", owner_id: 1)

carolyn1 = Challenge.create(name: "First Challenge", start_date: "2019-01-17 21:50:09", end_date: "2019-01-17 21:50:09", close_date: "2019-01-17 21:50:09", owner_id: 2)
carolyn2 = Challenge.create(name: "Second Challenge", start_date: "2019-01-17 21:50:09", end_date: "2019-01-17 21:50:09", close_date: "2019-01-17 21:50:09", owner_id: 2)


weight1 = Weight.create(weight: 196.5, date: '2019-1-12', user_id: 1 )
weight2 = Weight.create(weight: 197.5, date: '2019-1-12', user_id: 2 )

nick.user_exercises.create(exercise_id: 1, minutes: 40, date: "2019-01-12 12:00:00")
carolyn.user_exercises.create(exercise_id: 1, minutes: 40, date: "2019-01-12 12:00:00")
