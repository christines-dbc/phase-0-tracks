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

def rate_product(db, brand, category, name, rating, comment)
  db.execute("INSERT INTO products (brand, category, name, rating, comment)
    VALUES (?, ?, ?, ?, ?)", [brand, category, name, rating, comment])
end

def highest_rated(db)
  rating = db.execute("SELECT brand, name, rating, comment FROM products ORDER BY rating DESC LIMIT 5")
  rating.each do |product|
    puts "#{product[0]} #{product[1]} rated #{product[2]} / 5."
  end
end

def lowest_rated(db)
  rating = db.execute("SELECT brand, name, rating FROM products ORDER BY rating ASC LIMIT 5")
  rating.each do |product|
    puts "#{product[0]} #{product[1]} rated #{product[2]} / 5."
  end
end

def best_in_category(db, category)
  best = db.execute("SELECT brand, name, rating FROM products 
    WHERE category = '#{category}' ORDER BY rating DESC LIMIT 3")
  best.each do |product|
    puts "#{product[0]} #{product[1]} rated #{product[2]} / 5."
  end
end

# USER INTERFACE
puts "Thank you for launching the Vegan Food Rater 3000!"

puts "What which action would you like to perform?"
puts "Rate a product? View ratings? To quit, type 'goodbye'!"
action = gets.chomp.downcase

until action == "goodbye" || action == "no"
  if action == "rate" || action == "rate a product"
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

      puts "Thank you for rating #{brand} #{name}!"

      puts "Would you like to rate another product?"
      repeat = gets.chomp

      rate_product(db, brand, category, name, rating, comment)
    end

  elsif action == "view lowest rated products"
    lowest_rated(db)

  elsif action == "view highest rated products"
    highest_rated(db)

  elsif action == "view ratings"
    puts "Which food category would you like to view the top products for?"
    puts "meat, dairy and eggs, condiments, snacks or misc?"
    category = gets.chomp
    best_in_category(db, category)
  else
    puts "Sorry, I don't have the best vocabulary."
    puts "Here are a list of commands I understand:"
    puts "- rate a product"
    puts "- view ratings"
    puts "- view lowest/highest rated products"
  end
  puts "Would you like to perform another action? For example, rate a product or view ratings?"
  action = gets.chomp
end

puts "Thank you for running the Vegan Food Rater 3000!\nHope to see you again!"