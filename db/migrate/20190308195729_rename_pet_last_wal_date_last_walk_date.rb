class RenamePetLastWalDateLastWalkDate < ActiveRecord::Migration[5.2]
  def change
  	rename_column :pets, :lastWalDate, :lastWalkDate 
  end
end
