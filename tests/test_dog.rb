require 'minitest/autorun'
require_relative '../dog'

class DogTest < Minitest::Test
  def setup
    @dog = Dog.new("Buddy", "Golden Retriever", 3)
  end

  def test_dog_name
    assert_equal "Buddy", @dog.name
  end

  def test_dog_breed
    assert_equal "Golden Retriever", @dog.breed
  end

  def test_dog_age
    assert_equal 3, @dog.age
  end

  def test_to_s
    assert_equal "Buddy - Golden Retriever, 3 years old", @dog.to_s
  end
end
