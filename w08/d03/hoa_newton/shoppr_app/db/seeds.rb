category = ['Home', 'Office', 'Kitchen', 'Bathroom']
100.times do
  Product.create(name: Faker::Product.product_name, price: 19.99, quantity: 100, category: category.sample)
end