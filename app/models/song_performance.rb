class SongPerformance < ActiveRecord::Base
  belongs_to :event, inverse_of: :song_performances
end