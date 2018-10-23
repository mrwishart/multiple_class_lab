class BusStop

  attr_reader :name, :queue 

  def initialize(name)
    @name = name
    @queue = []

  end

  def passengers_in_queue
    return @queue.count
  end

  def add_to_queue(new_queuee)
    @queue << new_queuee
  end

  def clear_queue
    @queue.clear
  end


end
