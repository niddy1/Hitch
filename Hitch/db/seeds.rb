# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

guy = Guy.create({ username: "jim", password_digest: "jim"})
hitcher = Hitcher.create({ username: "bob", password_digest: "bob" })
response = Response.create({ girl_id: 1, hitcher_id: 1, response_description: "testing description", hitcher_rating: 5 })
