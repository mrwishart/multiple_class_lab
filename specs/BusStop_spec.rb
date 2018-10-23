require('minitest/autorun')
require('minitest/rg')
require_relative('../person')
require_relative('../BusStop')

class BusStopTest < MiniTest::Test

  def setup
    @passenger3 = Person.new("Phil", 27)
    @busstop1 = BusStop.new("Princes Street")

  end

  def test_busstop_name

    expected = "Princes Street"
    actual = @busstop1.name

    assert_equal(expected, actual)

  end

  def test_busstop_queue

    expected = 0
    actual = @busstop1.passengers_in_queue

    assert_equal(expected, actual)

  end

  def test_add_to_queue
    expected = 1
    @busstop1.add_to_queue(@passenger3)
    actual = @busstop1.passengers_in_queue
    assert_equal(expected, actual)
  end

  def test_queue_clear
    expected = 0
    @busstop1.add_to_queue(@passenger3)
    @busstop1.clear_queue
    actual = @busstop1.passengers_in_queue
    assert_equal(expected, actual)
  end

end
