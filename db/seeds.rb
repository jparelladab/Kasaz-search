# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Apartment.create(title: "Piso en el centro de l'Eixample", address: "Carrer d'Aragó 234 08007 Barcelona", price: 500000, sqm: 200, number_of_bedrooms: 3, number_of_bathrooms: 2)
Apartment.create(title: "Piso en el centro de Horta", address: "Carrer de Dante Alighieri 43 08032 Barcelona", price: 300000, sqm: 150, number_of_bedrooms: 3, number_of_bathrooms: 2)
Apartment.create(title: "Piso en el centro de Gracia", address: "Carrer Verdi 45, Barcelona", price: 400000, sqm: 200, number_of_bedrooms: 2, number_of_bathrooms: 2)
Apartment.create(title: "Piso en el centro de Sants", address: "carrer de Galileu 15, 08028 Barcelona ", price: 200000, sqm: 200, number_of_bedrooms: 1, number_of_bathrooms: 1)
Apartment.create(title: "Piso en el centro de Poblenou", address: "carrer Almogavers 23, Barcelona", price: 600000, sqm: 200, number_of_bedrooms: 4, number_of_bathrooms: 3)
