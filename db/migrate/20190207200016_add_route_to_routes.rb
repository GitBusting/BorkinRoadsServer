class AddRouteToRoutes < ActiveRecord::Migration[5.2]
  def change
    add_column :routes, :route, :string
  end
end
