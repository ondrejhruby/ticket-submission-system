class RemoveDepartmentFromTickets < ActiveRecord::Migration[7.2]
  def change
    remove_column :tickets, :department, :string
  end
end
