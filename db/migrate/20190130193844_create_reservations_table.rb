class CreateReservationsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.float :cost
      t.integer :length_of_stay
      t.integer :user_id
      t.integer :host_id
    end
  end
end
