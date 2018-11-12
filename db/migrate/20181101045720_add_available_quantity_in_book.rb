class AddAvailableQuantityInBook < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :available_quantity, :integer
  end
end
