require('minitest/autorun')
require('minitest/rg')
require_relative('../person')

class PersonTest < MiniTest::Test

  def setup

    @person1 = Person.new("Frank", 45)

  end

  def test_person_name

    expected = "Frank"
    actual = @person1.name

    assert_equal(expected, actual)
  end

end
