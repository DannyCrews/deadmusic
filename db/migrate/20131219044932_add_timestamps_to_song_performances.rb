class AddTimestampsToSongPerformances < ActiveRecord::Migration
    def change_table
      add_column(:song_performances, :created_at, :datetime)
      add_column(:song_performances, :updated_at, :datetime)
    end
end
