class AddColumnNameUserTickets < ActiveRecord::Migration[6.1]
  def change
    add_column :tickets, :user_name, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
