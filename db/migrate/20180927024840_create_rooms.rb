class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.integer :unit
      t.integer :max_guest
      t.integer :max_kid
      t.integer :room_size
      t.string :bed_type
      t.integer :bed_quantity
      t.string :amenity
      t.text :description
      t.string :country
      t.string :postal_code
      t.string :house_num
      t.string :street
      t.string :city
      t.string :state_province
      t.string :apt_number
      t.string :charge_type
      t.float :weekday_price
      t.float :weekend_price
      t.float :weekly_price
      t.float :monthly_price
      t.integer :for_each_guest_above
      t.float :charge
      t.timestamp :created_by
      t.timestamp :updated_by

      t.timestamps
    end
  end
end
