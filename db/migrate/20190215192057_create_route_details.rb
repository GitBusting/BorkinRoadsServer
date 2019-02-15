class CreateRouteDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :route_details do |t|
      t.float :maxPace
      t.float :avgPace
      t.float :movingPace
      t.float :maxSpeed
      t.float :avgSpeed
      t.float :movingSpeed
      t.float :routeLength
      t.float :totalTime
      t.float :movingTime
      t.datetime :date

      t.timestamps
    end
  end
end
