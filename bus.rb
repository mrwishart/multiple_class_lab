class Bus

  attr_reader :route_number, :passengers

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive_method
    return "Brum brum"
  end

  def no_of_passengers
    return @passengers.count
  end

  def pick_up(new_passenger)
    @passengers << new_passenger
  end

  def drop_off(passenger)
    @passengers.delete(passenger)
  end

  def empty_bus
    @passengers.clear
  end

  def pick_up_from_stop(stop)
    for passenger in stop.queue
      pick_up(passenger)
    end
    stop.clear_queue
  end


end
