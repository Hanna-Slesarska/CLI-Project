require_relative "dog"

puts "Welcome to the Dog Adoption Center!\n"

# Create an array of Dog instances
dogs = [
  Dog.new("Buddy", "Golden Retriever", 3),
  Dog.new("Max", "German Shepherd", 2),
  Dog.new("Bailey", "Labrador Retriever", 4)
]

# Display the list of available dogs
Dog.display_dogs(dogs)

# Prompt the user to choose a dog for adoption
selected_dog = Dog.choose_dog(dogs)


# Adopt the selected dog
Dog.adopt(selected_dog)

