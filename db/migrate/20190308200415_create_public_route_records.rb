class CreatePublicRouteRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :public_route_records do |t|
      t.integer :userID
      t.integer :petID
      t.string :route
      t.string :location

      t.timestamps
    end
  end
end
