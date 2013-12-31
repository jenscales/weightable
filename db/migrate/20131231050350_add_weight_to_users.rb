class AddWeightToUsers < ActiveRecord::Migration
  def change
    add_column :users, :start_weight, :integer
    add_column :users, :goal_weight, :integer
    add_column :users, :user_image, :string
    add_column :users, :about, :string
  end
end
