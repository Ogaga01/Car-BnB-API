class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :model
      t.integer :price
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
