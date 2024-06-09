class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.string :created_by
      t.date :date
      t.integer :days

      t.timestamps
    end
  end
end
