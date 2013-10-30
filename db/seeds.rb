# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.find_or_create_by_name!('Filtered', price_cents: 200)
Product.find_or_create_by_name!('Latte', price_cents: 400)
Product.find_or_create_by_name!('Espresso', price_cents: 300)
Product.find_or_create_by_name!('Cuppoccino', price_cents: 400)
Product.find_or_create_by_name!('Mocha', price_cents: 450)