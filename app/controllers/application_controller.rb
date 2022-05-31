class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    destinations=Destination.all
    trips = Trip.all
    stops = Stop.all
    arr=[destinations,trips,stops]
    arr.to_json
  end

  get "/destinations" do
    destinations=Destination.all
    destinations.to_json
  end

  get "/trips" do
    trips = Trip.all
    trips.to_json
  end

  get "/stops" do
    stops = Stop.all
    stops.to_json
  end

  get "/trips/:id" do
    trip = Trip.find(params[:id])
    trip.to_json(include: :destinations)
  end

  get "/destinations/:id" do
    destination = Destination.find(params[:id])
    destination.to_json(include: :trips)
  end



end
