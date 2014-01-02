class AddUserIdToWeighins < ActiveRecord::Migration
  def change
    add_column :weighins, :user_id, :integer
    add_column :weighins, :friend_id, :integer
  end
end
