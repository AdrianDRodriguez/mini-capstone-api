class ChangeEmailToSupplier < ActiveRecord::Migration[7.2]
  def change
    change_column :suppliers, :email, :string
  end
end
