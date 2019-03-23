class AddFriendIdsToUser < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :friend_ids, :string
  end
end
