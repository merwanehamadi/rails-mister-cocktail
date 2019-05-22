# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

mojito = Cocktail.create(name:"mojito")
monaco = Cocktail.create(name:"monaco")

banana = Ingredient.create(name:"banana")
chocolate = Ingredient.create(name:"chocolate")

mojito_banana = Dose.new(description: "1")
mojito_chocolate = Dose.new(description: "2")

monaco_banana = Dose.new(description: "2")
monaco_chocolate = Dose.new(description: "3")

mojito_banana.cocktail_id =  mojito.id
mojito_chocolate.cocktail_id =  mojito.id

monaco_banana.cocktail_id =  monaco.id
monaco_chocolate.cocktail_id =  monaco.id

mojito_banana.ingredient_id =  banana.id
mojito_chocolate.ingredient_id =  chocolate.id

monaco_banana.ingredient_id =  banana.id
monaco_chocolate.ingredient_id =  chocolate.id

mojito_banana.save
mojito_chocolate.save

monaco_banana.save
monaco_chocolate.save
