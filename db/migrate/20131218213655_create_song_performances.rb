class CreateSongPerformances < ActiveRecord::Migration
  def change
    create_table :song_performances do |t|
      t.integer :event_id
      t.text :title
      t.text :songwriter, :default => 'Grateful Dead'
      t.integer :set, :default => 1
      t.text :encore
    end
  end
end
