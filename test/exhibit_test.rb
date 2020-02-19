require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'
require './lib/patron'

class ExhibitTest < Minitest::Test

  def setup
    @exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})
    @patron_1 = Patron.new("Bob", 20)
  end

  def test_it_exists
    assert_instance_of Exhibit, @exhibit
    assert_instance_of Patron, @patron_1
  end

  def test_it_has_attributes
    assert_equal "Gems and Minerals", @exhibit.name
    assert_equal 0, @exhibit.cost
    assert_equal "Bob", @patron_1.name
    assert_equal 20, @patron_1.spending_money
  end

  def test_patron_starts_with_no_interests
    assert_equal [], @patron_1.interests
  end

  def test_patron_can_add_interests
    @patron_1.add_interest("Dead Sea Scrolls")
    @patron_1.add_interest("Gems and Minerals")

    assert_equal ["Dead Sea Scrolls", "Gems and Minerals"], @patron_1.interests
  end
end
