class SongPerformancesController < ApplicationController

def index
  @event = Event.find(params[:event_id])
  @songs = @event.song_performances.reverse
end


end
