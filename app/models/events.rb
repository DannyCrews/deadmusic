class Events < ActiveRecord::Base
  has_many :song_performances
end
