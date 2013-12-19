class RemoveEncoreFromSongPerformances < ActiveRecord::Migration
  def change
    remove_column :song_performances, :encore
  end
end
