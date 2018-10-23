require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')
require_relative('../BusStop')

class BusTest < MiniTest::Test

  def setup
    @busstop1 = BusStop.new("London Road")
    @passenger1 = Person.new("Bob", 34)
    @passenger2 = Person.new("Fred", 89)
    @bus1 = Bus.new(22, "Ocean Terminal")
  end

  def test_route_number
    expected = 22
    actual = @bus1.route_number
    assert_equal(expected, actual)
  end

  def test_drive_method
    expected = "Brum brum"
    actual = @bus1.drive_method

    assert_equal(expected, actual)

  end

  def test_bus_passengers_empty

    expected = []
    actual = @bus1.passengers

    assert_equal(expected, actual)

  end

  def test_number_passengers

    expected = 0
    actual = @bus1.no_of_passengers

    assert_equal(expected, actual)
  end

  def test_add_passengers
    expected = 1
    @bus1.pick_up(@passenger1)
    actual = @bus1.no_of_passengers

    assert_equal(expected, actual)
  end

  def test_remove_passengers
    expected = 0
    @bus1.pick_up(@passenger2)
    @bus1.drop_off(@passenger2)
    actual = @bus1.no_of_passengers

    assert_equal(expected, actual)

  end

  def test_bus_empty
    expected = 0
    @bus1.pick_up(@passenger1)
    @bus1.pick_up(@passenger2)
    @bus1.empty_bus
    actual = @bus1.no_of_passengers
    assert_equal(expected, actual)
  end

  def test_pick_up_from_stop

    expected_bus = 2
    expected_stop = 0

    #Bus Stop is current empty

    @busstop1.add_to_queue(@paspassenger1)
    @busstop1.add_to_queue(@paspassenger2)

    # Bus Stop now has 2 passengers

    @bus1.pick_up_from_stop(@busstop1)

    # Bus should have 2 passengers
    # Bus stop should have 0

    actual_bus = @bus1.no_of_passengers
    actual_stop =
    @busstop1.passengers_in_queue

    assert_equal(expected_bus, actual_bus)
    assert_equal(expected_stop, actual_stop)

  end

end
