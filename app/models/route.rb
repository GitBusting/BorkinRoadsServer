class Route < ApplicationRecord
	has_many :route_details
	belongs_to :user
end
