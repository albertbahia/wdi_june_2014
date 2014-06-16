require 'pry'

class Station
  attr_reader :name, :workers, :wheelchair_access, :av_wait_time

  def initialize(name, workers, wheelchair_access, av_wait_time)
    @name = name
    @workers = workers
    @wheelchair_access = wheelchair_access
    @av_wait_time = av_wait_time
  end

  def display_info
    station_info = "[#{name}] - "

    if wheelchair_access
      station_info << "Wheelchairs: Yes - "
    else
      station_info << "Wheelchairs: No - "
    end

    plural = "s"
    plural = "" if av_wait_time == 1
    station_info << "Average Wait: #{av_wait_time} min#{plural}"
  end
end
