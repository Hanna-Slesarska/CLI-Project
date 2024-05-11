class Dog
  attr_accessor :name, :breed, :age

  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
  end

  def to_s
    "#{name} - #{breed}, #{age} years old"
  end

  def self.display_dogs(dogs)
    puts "Available Dogs for Adoption:\n"
    dogs.each_with_index do |dog, index|
      puts "#{index + 1}. #{dog}"
    end
    puts "\n"
  end

  def self.choose_dog(dogs)
    puts "Please select a dog for adoption by entering its number:"
    input = gets.chomp.to_i
    if input.between?(1, dogs.length)
      return dogs[input - 1]
    else
      puts "Invalid selection. Please enter the number corresponding to the dog you want to adopt."
      choose_dog(dogs)
    end
  end

  def self.adopt(dog)
    puts "\nYou've selected #{dog} for adoption."
    puts "Congratulations! #{dog.name} will bring so much joy into your life!\n"
    pet_care(dog)
  end

  def self.pet_care(dog)
    loop do
      puts "\n"
      puts "What would you like to do with #{dog.name}?"
      puts "1. Feed #{dog.name}"
      puts "2. Play with #{dog.name}"
      puts "3. Check #{dog.name}'s condition"
      puts "4. Exit simulation"
      puts "Choose an option: "
      choice = gets.chomp.to_i
      case choice
      when 1
        self.feed(dog)
      when 2
        self.play(dog)
      when 3
        self.condition(dog)
      when 4
        puts "Thank you for playing with #{dog.name}, goodbye!"
        break
      else
        puts "#{dog.name} is confused, try another option."
      end
    end
  end

  def self.feed(dog)
    reaction = [
      "looks satisfied!",
      "doesn't seem to want to eat it.",
      "ate a little bit of it."
    ]

    puts "\n"
    puts "Maybe #{dog.name} is hungry. Should we feed them?"
    puts "1. Fill up #{dog.name}'s food bowl."
    puts "2. Nevermind, #{dog.name} doesn't look hungry."
    choice = gets.chomp.to_i
    case choice
    when 1
      puts "\n"
      puts "You leave some food in #{dog.name}'s food bowl."
      puts "#{dog.name} #{reaction.sample}"
    when 2
      puts "\n"
      puts "#{dog.name} walks away from the food bowl."
    end
  end

  def self.play(dog)
    puts "\n"
    puts "Let's play with #{dog.name}!"
    puts "What should we play with?"
    puts "1. Fetch a ball"
    puts "2. Hide and seek"
    puts "3. Tug-of-War"
    puts "4. Nevermind, #{dog.name} doesn't look like it wants to play."
    choice = gets.chomp.to_i
    case choice
    when 1
      puts "\n"
      puts "#{dog.name} fetches a ball."
    when 2
      puts "\n"
      puts "#{dog.name} finds a hidden treat."
    when 3
      puts "\n"
      puts "#{dog.name} pulls a plush toy."
    when 4
    end
  end

  def self.condition(dog)
    mood = [
      "neutral",
      "sleepy",
      "hungry",
      "bored",
      "playful",
      "like it wants attention"
    ]

    puts "\n"
    puts "You take a look at #{dog.name}."
    puts "#{dog.name} looks #{mood.sample}."
  end

end
