class ChangePriceType < ActiveRecord::Migration[7.0]
  def change
    change_column :cars, :price, :decimal, precision: 10, scale: 2
  end
end
