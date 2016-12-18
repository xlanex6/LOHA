# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#User
# user =  User.create(
#           email:"alex@gmail.com",
#           password:"123soleil"
#         )
#
# user.save
#
#
# # Tags
# tags = %w()

# Category
cat = %w(Hip-Hop Classique Jazz Salon Electrique Contemporain Monde Rock Expérimental Cabaret)

cat.each do |c|
  Category.create(
    name:"#{c}"
  )
end
