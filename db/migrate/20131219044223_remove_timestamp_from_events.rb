class RemoveTimestampFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :timestamp, :string
  end
end
