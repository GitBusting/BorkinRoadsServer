class AddRouteIdToRouteDetail < ActiveRecord::Migration[5.2]
  def change
  	add_column :route_details, :route_id, :integer
  	add_index	:route_details, :route_id
  end
end
