class AddTimestampsToEvent < ActiveRecord::Migration
  def change_table
      add_column(:events, :created_at, :datetime)
      add_column(:events, :updated_at, :datetime)
  end
end
