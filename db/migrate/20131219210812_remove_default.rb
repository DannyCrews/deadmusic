class RemoveDefault < ActiveRecord::Migration
  def change
    change_column_default(:song_performances, :songwriter, nil)
  end
end
