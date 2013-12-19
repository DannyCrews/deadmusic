class Event < ActiveRecord::Base
  has_many :song_performances
end
