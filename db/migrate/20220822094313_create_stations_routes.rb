# frozen_string_literal: true

class CreateStationsRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :railway_stations_routes do |t|
      t.integer :railway_station_id
      t.integer :route_id

      t.timestamps
    end
  end
end
