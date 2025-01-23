class AddMakerToProduct < ActiveRecord::Migration[7.2]
  def change
    add_column :products, :maker, :string
  end
end
