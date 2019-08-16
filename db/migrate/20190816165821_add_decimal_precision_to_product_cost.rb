class AddDecimalPrecisionToProductCost < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :cost, :decimal, precision: 8, scale: 2
  end
end
