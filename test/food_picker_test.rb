gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/food_picker'

class FoodPickerTest < Minitest::Test
  def test_the_healthy_option
    expected = 
      "The healthy menu:\n" +
      "Santa will have 3 sprouts served with a glass of water.\n" +
      "Rudolph will have 1 carrot served with a glass of milk.\n" +
      "Elves will have some fairy dust served with a glass of milk.\n"
    assert_equal expected, FoodPicker.new.menuOptions("healthy")
  end

  def test_the_standard_option
    expected =
      "The standard menu:\n" +
      "Santa will have 1 mince pie served with a measure of brandy.\n" +
      "Rudolph will have a bag of reindeer food served with a cup of hot chocolate.\n" +
      "Elves will have a plate of syrup spaghetti served with a glass of soda.\n"
    assert_equal expected, FoodPicker.new.menuOptions("standard")
  end

  def test_the_gourmet_option
    expected =
      "The gourmet menu:\n" +
      "Santa will have 1 slice of fruit cake and cream served with a glass of mulled apple juice.\n" +
      "Rudolph will have 1 slice of carrot cake served with a glass of festive cosmopolitan.\n" +
      "Elves will have a plate of syrup spaghetti and extra syrup served with a glass of soda.\n"
    assert_equal expected, FoodPicker.new.menuOptions("gourmet")
  end

  def test_the_menu
    expected =
      "The healthy menu:\n" +
      "Santa will have 3 sprouts served with a glass of water.\n" +
      "Rudolph will have 1 carrot served with a glass of milk.\n" +
      "Elves will have some fairy dust served with a glass of milk.\n" +
      "\n" +
      "The standard menu:\n" +
      "Santa will have 1 mince pie served with a measure of brandy.\n" +
      "Rudolph will have a bag of reindeer food served with a cup of hot chocolate.\n" +
      "Elves will have a plate of syrup spaghetti served with a glass of soda.\n" +
      "\n" +
      "The gourmet menu:\n" +
      "Santa will have 1 slice of fruit cake and cream served with a glass of mulled apple juice.\n" +
      "Rudolph will have 1 slice of carrot cake served with a glass of festive cosmopolitan.\n" +
      "Elves will have a plate of syrup spaghetti and extra syrup served with a glass of soda.\n"
    assert_equal expected, FoodPicker.new.fullMenuOptions()
  end

  def skip test_the_menu_for_santa
    expected = 
      "Santa's healthy option is 3 sprouts served with a glass of water.\n" +
      "Santa's standard option is 1 mince pie served with a measure of brandy.\n" +
      "Santa's gourmet option is 1 slice of fruit cake and cream served with a glass of mulled apple juice.\n"
    
    assert_equal expected, FoodPicker.new.dinerMenuOptions("Santa")
  end

  def skip test_the_menu_for_rudolph
    expected = 
      "Rudolph's healthy option is 1 carrot served with a glass of milk.\n" +
      "Rudolph's standard option is a bag of reindeer food served with a cup of hot chocolate.\n" +
      "Rudolph's gourmet option is 1 slice of carrot cake served with a glass of festive cosmopolitan.\n"
    
    assert_equal expected, FoodPicker.new.dinerMenuOptions("Rudolph")
  end

  def skip test_the_menu_for_elves
    expected = 
      "Elves's healthy option is some fairy dust served with a glass of milk.\n" +
      "Elves's standard option is a plate of syrup spaghetti served with a glass of soda.\n" +
      "Elves's gourmet option is a plate of syrup spaghetti and extra syrup served with a glass of soda.\n"
    
    assert_equal expected, FoodPicker.new.dinerMenuOptions("Elves")
  end
end
