def build_array(one, two, three)
	array = [one, two, three]
end

def add_to_array(array, item)
	array << item
end


cat_rappers = []
p cat_rappers

cat_rappers += ["DJ Catnip", "Meow Mix", "Fluffy D", "Lil Klaw", "Feline Factory"]
p cat_rappers

cat_rappers.delete_at(2)
p cat_rappers

cat_rappers.insert(2, "2Tail")
p cat_rappers

cat_rappers.shift
p cat_rappers

p "DJ Catnip is one of the top five cat rappers: #{cat_rappers.include?("DJ Catnip")}"

dog_rappers = ["Lil Bow Wow", "Barky McJones", "Milkbone"]

animal_rappers = cat_rappers + dog_rappers
p animal_rappers

p build_array("hello", 2, nil)
p add_to_array(["a", "b", "c", 1, 2], 3)
