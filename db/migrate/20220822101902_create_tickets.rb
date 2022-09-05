# frozen_string_literal: true

class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.integer :train_id
      t.string :starting_station
      t.string :ending_station

      t.timestamps
    end
  end
end
