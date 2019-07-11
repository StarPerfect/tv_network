require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'

class CharacterTest < Minitest::Test
  def setup
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
  end

  def test_character_exists
    assert_instance_of Character, @kitt
  end

# attributes test should test all items initialized
  def test_attributes
    assert_equal "KITT", @kitt.name
    assert_equal "William Daniels", @kitt.actor
    assert_equal  1000000, @kitt.salary
  end
end
