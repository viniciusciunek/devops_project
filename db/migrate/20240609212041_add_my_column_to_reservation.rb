class AddMyColumnToReservation < ActiveRecord::Migration[7.1]
  def change
    add_column :reservations, :bloco, :integer
    add_column :reservations, :apt, :integer
  end
end
