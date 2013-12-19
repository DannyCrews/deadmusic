class AddIndexToSongPerformances < ActiveRecord::Migration
  def change
    add_index :song_performances, :event_id
  end
end
