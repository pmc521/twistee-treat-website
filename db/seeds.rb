# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


# user1 = User.create(
#   first_name: 'firstname',
#   last_name: 'lastname',
#   email: 'user1@email.com',
#   phone_number: "2151234567",
#   password: 'password',
#   password_confirmation: 'password'
# )
# shift1 = Shift.create(
#   day: '26',
#   month: '06',
#   year: '2017',
#   start: '1200',
#   finish: '500',
# )
# schedule1 = Schedule.create(
#   user: user1,
#   shift: shift1
# )
# user2 = User.create(
#   first_name: 'user2',
#   last_name: 'lastname',
#   email: 'user2@email.com',
#   phone_number: "2151234567",
#   password: 'password',
#   password_confirmation: 'password'
# )
# shift2 = Shift.create(
#   day: '26',
#   month: '06',
#   year: '2017',
#   start: '500',
#   finish: '1000',
# )
# schedule2 = Schedule.create(
#   user: user2,
#   shift: shift2
# )
# user3 = User.create(
#   first_name: 'user3',
#   last_name: 'lastname',
#   email: 'user3@email.com',
#   phone_number: "2151234567",
#   password: 'password',
#   password_confirmation: 'password'
# )
# shift3 = Shift.create(
#   day: '26',
#   month: '06',
#   year: '2017',
#   start: '600',
#   finish: '1000',
# )
# schedule3 = Schedule.create(
#   user: user3,
#   shift: shift3
# )


# user4 = User.create(
#   first_name: 'user4',
#   last_name: 'lastname',
#   email: 'user4@email.com',
#   phone_number: "2151234567",
#   password: 'password',
#   password_confirmation: 'password'
# )
# user5 = User.create(
#   first_name: 'user5',
#   last_name: 'lastname',
#   email: 'user5@email.com',
#   phone_number: "2151234567",
#   password: 'password',
#   password_confirmation: 'password'
# )


waterice = ['Cherry', 'Cotton Candy', 'Rainbow', 'Bubblegum', 'Chocolate', 'Root Beer', 'Lemon', 'Sugar Free', 'Mango', 'Special Flavor']

waterice.each do |flavor|
  Product.create(
    name: flavor,
    catagorie: 'Water Ice',
    amount_needed: 3,
  )
end

icecream = ["Chocolate", "Mint", "Vanilla", "Coffee", "Strawberry", "Butter Pecan", "Cookies & Cream", "Special flavor"]

icecream.each do |flavor|
  Product.create(
    name: flavor,
    catagorie: 'Ice-Cream',
    amount_needed: 3,
  )
end

misc = ["Spoons", "Pretzels", "Napkins", "Waffle Bowls", "sm. cones", "Lg. waffle cones", "med. cones", "Sm.  waffle cones", "lg. cones", "sugar cones"]

misc.each do |item|
  Product.create(
    name: item,
    catagorie: 'Misc',
    amount_needed: 2,
  )
end

mix = ["Vanilla	", "Chocolate", "Yogurt", "Whipped cream", "Shake Mix"]

misc.each do |item|
  Product.create(
    name: item,
    catagorie: 'Mix',
    amount_needed: 12,
  )
end

candy = [ "Snickers",  "cookie dough", "Brownies", "M&M's",  "Oreo",  "Penut Butter Cups", "Heath bars", "butterfingers", "gummy worms", "Chocolate Pretzels"]

candy.each do |item|
  Product.create(
    name: item,
    catagorie: 'Candy',
    amount_needed: 2,
  )
end
