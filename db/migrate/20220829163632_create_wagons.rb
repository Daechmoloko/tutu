# frozen_string_literal: true

class CreateWagons < ActiveRecord::Migration[6.1]
  def change
    create_table :wagons do |t|
      t.string :number
      t.string :wagon_class_id
      t.integer :top_place
      t.integer :under_place
      t.integer :train_id, foreign_key: true

      t.timestamps
    end
  end
end
