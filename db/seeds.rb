# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


User.create(
  first_name: 'John',
  last_name: 'Doe',
  email: 'Jdoe@email.com',
  phone_number: "2151234567",
  password: 'password',
  password_confirmation: 'password'
)
User.create(
  first_name: 'Jane',
  last_name: 'Doe',
  email: 'janedoe@email.com',
  phone_number: "2151234567",
  password: 'password',
  password_confirmation: 'password'
)
User.create(
  first_name: 'Jimmy',
  last_name: 'John',
  email: 'jj123@email.com',
  phone_number: "2151234567",
  password: 'password',
  password_confirmation: 'password'
)
User.create(
  first_name: 'Ben',
  last_name: 'Franklin',
  email: 'BenF@email.com',
  phone_number: "2151234567",
  password: 'password',
  password_confirmation: 'password'
)
User.create(
  first_name: 'Buddy',
  last_name: 'Weiser',
  email: 'booze@email.com',
  phone_number: "2151234567",
  password: 'password',
  password_confirmation: 'password'
)
User.create(
  first_name: 'Angus',
  last_name: 'Young',
  email: 'acdc@email.com',
  phone_number: "2151234567",
  password: 'password',
  password_confirmation: 'password'
)
User.create(
  first_name: 'Will',
  last_name: 'Smith',
  email: 'wsmith@email.com',
  phone_number: "2151234567",
  password: 'password',
  password_confirmation: 'password'
)






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

misc = ["Spoons", "Pretzels", "Napkins", "Waffle Bowls", "Small cones", "Large waffle cones", "Medium cones", "Small waffle cones", "large cones", "Sugar Cones"]

misc.each do |item|
  Product.create(
    name: item,
    catagorie: 'Misc',
    amount_needed: 2,
  )
end

mix = ["Vanilla", "Chocolate", "Yogurt", "Whipped cream", "Shake Mix"]

mix.each do |item|
  Product.create(
    name: item,
    catagorie: 'Mix',
    amount_needed: 12,
  )
end

candy = [ "Snickers",  "Cookie Dough", "Brownies", "M&M's",  "Oreo",  "Penut Butter Cups", "Heath Bars", "butterfingers", "Gummy Worms", "Chocolate Pretzels"]

candy.each do |item|
  Product.create(
    name: item,
    catagorie: 'Candy',
    amount_needed: 2,
  )
end
toppings = [ "Hot Fudge",  "Carmel", "Strawberry", "Pineapple",  "Wet-Walnuts",  "Cherry", "Bananas"]

toppings.each do |item|
  Product.create(
    name: item,
    catagorie: 'Toppings',
    amount_needed: 6,
  )
end
waterice = {"Small" =>	1.85, "Medium" =>	2.55, "Large" => 3.15, "Pint" =>	3.15, "Quart" =>	4.99}

waterice.each do |size, price|
  Price.create(
    catagorie: 'Water Ice',
    size: size,
    price: price,
  )
end

softserve =  {"Small" =>	2.75, "Medium" =>		3.10, "Large" => 		3.95, "Pint" =>	4.25, "Quart" =>	6.25}

softserve.each do |size, price|
  Price.create(
    catagorie: 'Ice-Cream',
    sub_catagorie: 'Soft Serve',
    size: size,
    price: price,
  )
end

handdipped = {"Small" => 3.05, "Medium" => 3.30, "Large" => 4.05, "Pint" => 4.45, "Quart" => 6.50}

handdipped.each do |size, price|
  Price.create(
    catagorie: 'Ice-Cream',
    sub_catagorie: 'Hand Dipped',
    size: size,
    price: price,
  )
end
softservesundae =  {"Small" =>	4.15, "Large" => 		4.70, "Banana Split" =>	5.70}

softservesundae.each do |size, price|
  Price.create(
    catagorie: 'Sundae',
    sub_catagorie: 'Soft Serve',
    size: size,
    price: price,
  )
end

handdippedsundae =  {"Small" =>	4.49, "Large" => 		4.99, "Banana Split" =>	5.99}

handdippedsundae.each do |size, price|
  Price.create(
    catagorie: 'Sundae',
    sub_catagorie: 'Hand Dipped',
    size: size,
    price: price,
  )
end
