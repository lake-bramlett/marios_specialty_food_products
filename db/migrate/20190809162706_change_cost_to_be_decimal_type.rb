class ChangeCostToBeDecimalType < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :cost, :decimal
  end
end
