class CreateWeighins < ActiveRecord::Migration
  def change
    create_table :weighins do |t|
      t.integer :todays_weight
      t.string :weigh_image
      t.text :comments

      t.timestamps
    end
  end
end
