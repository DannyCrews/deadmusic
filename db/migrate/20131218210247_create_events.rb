class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :date
      t.string :tour
      t.text :url
      t.string :venue
      t.string :city
      t.string :state
      t.string :statecode
      t.float :lat
      t.float :long
      t.string :timestamp
    end
  end
end
