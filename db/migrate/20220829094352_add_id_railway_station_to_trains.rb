# frozen_string_literal: true

class AddIdRailwayStationToTrains < ActiveRecord::Migration[6.1]
  def change
    add_column :trains, :railway_station_id, :integer
  end
end
