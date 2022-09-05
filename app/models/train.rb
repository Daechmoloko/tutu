# frozen_string_literal: true

class Train < ActiveRecord::Base
  has_many :tickets
  has_many :wagons
  belongs_to :route
  belongs_to :railway_station
  validates :number, presence: true
end
