class AddStartDateToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :start_date, :datetime
  end
end
