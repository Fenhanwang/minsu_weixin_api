class AddEndDateToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :end_date, :datetime
  end
end
