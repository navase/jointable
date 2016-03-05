# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Tag.destroy_all
Restaurant.destroy_all

fastfood = Tag.create(option:"fastfood")
meat = Tag.create(option:"meat")

mcdonalds = Restaurant.create(name:"McDonalds")
kfc = Restaurant.create(name:"KFC")

mcdonalds.tags << fastfood << meat
kfc.tags << fastfood
