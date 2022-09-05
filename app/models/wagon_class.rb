# frozen_string_literal: true

class WagonClass < ActiveRecord::Base
  has_many :wagons
  validates :title, presence: true
end
