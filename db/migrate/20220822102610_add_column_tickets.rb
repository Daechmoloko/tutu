# frozen_string_literal: true

class AddColumnTickets < ActiveRecord::Migration[6.1]
  def change
    add_column :tickets, :user_id, :integer
  end
end
