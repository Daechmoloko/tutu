# frozen_string_literal: true

class Wagon < ActiveRecord::Base
  belongs_to :wagon_class
  belongs_to :train
  validates :number, presence: true
  validates :top_place, presence: true
  validates :under_place, presence: true
end
