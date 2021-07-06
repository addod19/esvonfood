# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


STATES = [
  {
    name: 'yam balls',
    category: 'package 2',
    description: 'yam balls with delicious sauce',
    price: 67.99
  },
  {
    name: 'jollof rice',
    category: 'package 3',
    description: 'ty me once and you will see',
    price: 67.99
  },
  {
    name: 'fufu',
    category: 'vvip p2',
    description: 'pounded special fufu with goat, tuna, tilapia',
    price: 67.99
  },
  {
    name: 'rice 2',
    category: 'package 4',
    description: 'banana rice with delicious sauce',
    price: 67.99
  }
 
  
].freeze

Product.create(STATES)