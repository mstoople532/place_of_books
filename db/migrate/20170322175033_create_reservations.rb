class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.string :reservation_name
      t.integer :book_id
      t.datetime :checked_out
      t.date :due_date
      t.datetime :returned

      t.timestamps
    end
  end
end
