class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.float :lat
      t.float :longitude
      t.string :address
      t.text :description
      t.string :title

      t.timestamps
    end
  end
end
