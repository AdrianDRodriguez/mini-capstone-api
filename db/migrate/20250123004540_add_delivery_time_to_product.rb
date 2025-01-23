class AddDeliveryTimeToProduct < ActiveRecord::Migration[7.2]
  def change
    add_column :products, :delivery, :string
  end
end
