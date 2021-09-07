# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Wizard.create(text: "Loves Butter Beer", stars:1, source:'Wizard Weekly', username:"Harry")
Wizard.create(text: "Bright red haid, also loves chocolate frogs", stars:1, source:'Wizard Weekly', username:"Ron")
Wizard.create(text: "face always has a sneer", stars:0, source:'Top Wizards', username:"Draco")
Wizard.create(text: "Lives in LaLa Land", stars:2.2, source:'Wizard Weekly', username:"Luna")
Wizard.create(text: "Enjoys lemon drops from time to time", stars:4.5, source:'Wizard Weekly', username:"Dumbledor")
puts "seeded facts size: #{Wizard.all.size}"