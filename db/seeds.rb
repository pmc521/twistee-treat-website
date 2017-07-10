# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


user1 = User.create(
  first_name: 'John',
  last_name: 'Doe',
  email: 'Jdoe@email.com',
  phone_number: "2151234567",
  password: 'password',
  password_confirmation: 'password'
)
user2 = User.create(
  first_name: 'Jane',
  last_name: 'Doe',
  email: 'janedoe@email.com',
  phone_number: "2151234567",
  password: 'password',
  password_confirmation: 'password'
)
user3 = User.create(
  first_name: 'Jimmy',
  last_name: 'John',
  email: 'jj123@email.com',
  phone_number: "2151234567",
  password: 'password',
  password_confirmation: 'password'
)
user4 = User.create(
  first_name: 'Ben',
  last_name: 'Franklin',
  email: 'BenF@email.com',
  phone_number: "2151234567",
  password: 'password',
  password_confirmation: 'password'
)
user5 = User.create(
  first_name: 'Buddy',
  last_name: 'Weiser',
  email: 'booze@email.com',
  phone_number: "2151234567",
  password: 'password',
  password_confirmation: 'password'
)
user6 = User.create(
  first_name: 'Angus',
  last_name: 'Young',
  email: 'acdc@email.com',
  phone_number: "2151234567",
  password: 'password',
  password_confirmation: 'password'
)
user6 = User.create(
  first_name: 'Will',
  last_name: 'Smith',
  email: 'wsmith@email.com',
  phone_number: "2151234567",
  password: 'password',
  password_confirmation: 'password'
)






# waterice = ['Cherry', 'Cotton Candy', 'Rainbow', 'Bubblegum', 'Chocolate', 'Root Beer', 'Lemon', 'Sugar Free', 'Mango', 'Special Flavor']
#
# waterice.each do |flavor|
#   Product.create(
#     name: flavor,
#     catagorie: 'Water Ice',
#     amount_needed: 3,
#   )
# end
#
# icecream = ["Chocolate", "Mint", "Vanilla", "Coffee", "Strawberry", "Butter Pecan", "Cookies & Cream", "Special flavor"]
#
# icecream.each do |flavor|
#   Product.create(
#     name: flavor,
#     catagorie: 'Ice-Cream',
#     amount_needed: 3,
#   )
# end
#
# misc = ["Spoons", "Pretzels", "Napkins", "Waffle Bowls", "Small cones", "Large waffle cones", "Medium cones", "Small waffle cones", "large cones", "Sugar Cones"]
#
# misc.each do |item|
#   Product.create(
#     name: item,
#     catagorie: 'Misc',
#     amount_needed: 2,
#   )
# end
#
# mix = ["Vanilla", "Chocolate", "Yogurt", "Whipped cream", "Shake Mix"]
#
# misc.each do |item|
#   Product.create(
#     name: item,
#     catagorie: 'Mix',
#     amount_needed: 12,
#   )
# end
#
# candy = [ "Snickers",  "Cookie Dough", "Brownies", "M&M's",  "Oreo",  "Penut Butter Cups", "Heath Bars", "butterfingers", "Gummy Worms", "Chocolate Pretzels"]
#
# candy.each do |item|
#   Product.create(
#     name: item,
#     catagorie: 'Candy',
#     amount_needed: 2,
#   )
# end
