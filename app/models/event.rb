class Event < ActiveRecord::Base
  has_many :song_performances, inverse_of: :event
end
