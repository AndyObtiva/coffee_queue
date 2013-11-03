# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
product_filtered = Product.find_or_create_by_name!('Filtered')
product_filtered_product_option_large = product_filtered.product_options.find_or_create_by_name!('Large')
product_filtered_product_option_large.update_attributes!(price_cents: 250)
product_filtered_product_option_medium = product_filtered.product_options.find_or_create_by_name!('Medium')
product_filtered_product_option_medium.update_attributes!(price_cents: 200)
product_filtered_product_option_small = product_filtered.product_options.find_or_create_by_name!('Small')
product_filtered_product_option_small.update_attributes!(price_cents: 150)

product_latte = Product.find_or_create_by_name!('Latte')
product_latte_product_option_regular = product_latte.product_options.find_or_create_by_name!('Regular')
product_latte_product_option_regular.update_attributes!(price_cents: 400)
product_latte_product_option_skim = product_latte.product_options.find_or_create_by_name!('Skim')
product_latte_product_option_skim.update_attributes!(price_cents: 400)

product_espresso = Product.find_or_create_by_name!('Espresso')
product_espresso_product_option_single = product_espresso.product_options.find_or_create_by_name!('Single')
product_espresso_product_option_single.update_attributes!(price_cents: 250)
product_espresso_product_option_double = product_espresso.product_options.find_or_create_by_name!('Double')
product_espresso_product_option_double.update_attributes!(price_cents: 450)

product_cuppoccino = Product.find_or_create_by_name!('Cuppoccino')
product_cuppoccino_product_option_standard = product_cuppoccino.product_options.find_or_create_by_name!('Standard')
product_cuppoccino_product_option_standard.update_attributes!(price_cents: 400)

product_mocha = Product.find_or_create_by_name!('Mocha')
product_mocha_product_option_regular = product_mocha.product_options.find_or_create_by_name!('Regular')
product_mocha_product_option_regular.update_attributes!(price_cents: 450)
product_mocha_product_option_regular_skim = product_mocha.product_options.find_or_create_by_name!('Regular Skim')
product_mocha_product_option_regular_skim.update_attributes!(price_cents: 450)
product_mocha_product_option_white = product_mocha.product_options.find_or_create_by_name!('White')
product_mocha_product_option_white.update_attributes!(price_cents: 450)
product_mocha_product_option_white_skim = product_mocha.product_options.find_or_create_by_name!('White Skim')
product_mocha_product_option_white_skim.update_attributes!(price_cents: 450)
product_mocha_product_option_marble = product_mocha.product_options.find_or_create_by_name!('Marble')
product_mocha_product_option_marble.update_attributes!(price_cents: 450)
product_mocha_product_option_marble_skim = product_mocha.product_options.find_or_create_by_name!('Marble Skim')
product_mocha_product_option_marble_skim.update_attributes!(price_cents: 450)

product_americano = Product.find_or_create_by_name!('Americano')
product_americano_product_option_standard = product_americano.product_options.find_or_create_by_name!('Standard')
product_americano_product_option_standard.update_attributes!(price_cents: 300)

