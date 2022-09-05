# frozen_string_literal: true

class CreateTypeWagon < ActiveRecord::Migration[6.1]
  def change
    create_table :wagon_classes do |t|
      t.string :title

      t.timestamps
    end
  end
end
