# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'http'

response = HTTP.get("http://data.orghunter.com/v1/charitysearch?user_key=be39a1ed56cff895e05b0bca8b7af4d5")

p response.parse