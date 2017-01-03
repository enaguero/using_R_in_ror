# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

s1 = Species.create(name:'setosa')
s2 = Species.create(name:'versicolor')
s3 = Species.create(name:'virginica')

Flower.create!(sepal_length:5.1,sepal_width:3.5,petal_length:1.4,petal_width:0.2) #setosa
Flower.create!(sepal_length:7,sepal_width:3.2,petal_length:4.7,petal_width:1.4) #versicolor
Flower.create!(sepal_length:5.8,sepal_width:2.8,petal_length:5.1,petal_width:2.4) #virginica
