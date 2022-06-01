class Trip < ActiveRecord::Base
    has_many :stops
    has_many :destinations, through: :stops

    def expanded_stops
        new_stops = self.stops.map{|stop|[stop,stop.destination]}
    end
end