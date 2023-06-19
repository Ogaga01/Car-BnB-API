class ChangeDateFormatInReservationTable < ActiveRecord::Migration[7.0]
  def up
    change_column :reservations, :date, :datetime
   end
 
   def down
    change_column :reservations, :date, :date
   end
end
