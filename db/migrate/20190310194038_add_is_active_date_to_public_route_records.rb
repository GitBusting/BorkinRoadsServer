class AddIsActiveDateToPublicRouteRecords < ActiveRecord::Migration[5.2]
  def change
    add_column :public_route_records, :isActive, :boolean
    add_column :public_route_records, :date, :datetime
  end
end
