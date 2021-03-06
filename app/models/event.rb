class Event < ActiveRecord::Base
  has_many :song_performances, inverse_of: :event

  geocoded_by :address, :latitude  => :lat, :longitude => :long
end
