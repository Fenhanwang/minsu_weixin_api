class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :phone_num
      t.string :amenity
      t.string :personal_id_num
      t.string :phone_num
      t.datetime :check_in
      t.datetime :check_out
      t.integer :num_night
      t.integer :num_pet
      t.integer :num_guest
      t.integer :num_kid
      t.string :order_number
      t.references :room, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
