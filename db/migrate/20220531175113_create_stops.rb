class CreateStops < ActiveRecord::Migration[6.1]
  def change
    create_table :stops do |t|
      t.datetime :arrival
      t.datetime :departure
      t.integer :trip_id
      t.integer :destination_id
    end
  end
end
