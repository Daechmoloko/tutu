# frozen_string_literal: true

class RailwayStation < ActiveRecord::Base
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes
  has_many :trains
  validates :title, presence: true
end
