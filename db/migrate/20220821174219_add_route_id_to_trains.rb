# frozen_string_literal: true

class AddRouteIdToTrains < ActiveRecord::Migration[6.1]
  def change
    add_column :trains, :route_id, :integer, index: { unique: true }, foreign_key: true
    # Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
