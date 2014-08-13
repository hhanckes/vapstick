# encoding: utf-8 

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "--> Products:"
aux = []
aux << (Product.find_by_name("Vapstick Capuccino") || Product.create(:name => 'Vapstick Capuccino', price: 25000))
aux << (Product.find_by_name("Vapstick Mint") || Product.create(:name => 'Vapstick Mint', price: 25000))
aux << (Product.find_by_name("Vapstick Berries") || Product.create(:name => 'Vapstick Berries', price: 25000))
aux << (Product.find_by_name("Vapstick Tropical") || Product.create(:name => 'Vapstick Tropical', price: 25000))
aux << (Product.find_by_name("Vapstick Cigar") || Product.create(:name => 'Vapstick Cigar', price: 25000))
aux << (Product.find_by_name("Vapstick Vanilla") || Product.create(:name => 'Vapstick Vanilla', price: 25000))
aux.each { |x| puts x.name }
puts "\n"

puts "--> ShippingArea:"
aux = []
aux << (ShippingArea.find_by_name("Bogotá") || ShippingArea.create(:name => 'Bogotá', cost: 4000))
aux << (ShippingArea.find_by_name("Medellín") || ShippingArea.create(:name => 'Medellín', cost: 5000))
aux << (ShippingArea.find_by_name("Cali") || ShippingArea.create(:name => 'Cali', cost: 6000))
aux.each { |x| puts x.name }
puts "\n"