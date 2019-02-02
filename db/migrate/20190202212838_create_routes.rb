class CreateRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
      t.string :title
      t.float :rating
      t.datetime :date
      t.float :estimatedDuration
      t.boolean :nearWater
      t.boolean :nearPark
      t.boolean :favourite
      t.integer :numberOfTimesUsed

      t.timestamps
    end
  end
end
