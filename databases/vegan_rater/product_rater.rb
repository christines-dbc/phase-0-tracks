require 'sqlite3'

db = SQLite3::Database.new("vegan_products.db")

create_product_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS products (
  id INTEGER PRIMARY KEY,
  brand VARCHAR(255),
  category VARCHAR(255),
  name VARCHAR(255),
  rating INT,
  comment VARCHAR(255)
  )
SQL

db.execute(create_product_table_cmd)
# db.execute("INSERT INTO products (brand, category, name, rating, comment)
#  VALUES ('Field Roast', 1, 'Apple Smoked Sausage', 5, 'Tastes amazing!')")

# db.execute(create_categories_table)
# db.execute("INSERT INTO categories (name)
#   VALUES ('meats'), ('dairy and eggs'), ('condiments'), ('snacks'), ('misc')")

def rate_product(db, brand, category, name, rating, comment)
  db.execute("INSERT INTO products (brand, category, name, rating, comment)
    VALUES (?, ?, ?, ?, ?)", [brand, category, name, rating, comment])
end

puts "Thank you for launching the Vegan Food Rater 3000!"

repeat = ""
until repeat == "no"
  puts "What brand is the product you'd like to rate?"
  brand = gets.chomp.downcase

  puts "What is the name of the product?"
  name = gets.chomp.downcase

  puts "What type of product is this (meat, dairy and eggs, condiments, snacks, misc)?"
  category = gets.chomp.downcase

  puts "How would you rate this product (5 is fantastic, 1 is gross)?"
  rating = gets.chomp.to_i

  puts "Why did you give the product a #{rating} / 5?"
  comment = gets.chomp

  puts "Would you like to rate another product?"
  repeat = gets.chomp

  rate_product(db, brand, category, name, rating, comment)
end
