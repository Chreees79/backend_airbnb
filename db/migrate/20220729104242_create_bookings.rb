class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.references :guest, index: true
      t.references :admin, index: true
      t.belongs_to :accomodation, index: true
      t.timestamps
    end
  end
end
