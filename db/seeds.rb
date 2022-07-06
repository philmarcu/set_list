# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@ohbliv = Artist.create!(name: "Ohbliv", hometown: "Richmond, VA")
@btrue = ohbliv.songs.create!(title: "Be True", length: 204, play_count: 1039)
@strnge = ohbliv.songs.create!(title: "Strange Heart", length: 323, play_count: 1532)
@explore = ohbliv.songs.create(title: "Let's Explore", length: 325, play_count: 1914)
@chokmah = ohbliv.songs.create(title: "Chokmah", length: 242, play_count: 2175)
