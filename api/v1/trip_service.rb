require 'models/trip'

get '/api/v1/trips/:name' do
  trip = Trip.find(name: params[:name])
  if trip
    trip.to_json
  else
    error 404, {error: 'trip not found'}.to_json
  end
end