class AddDepartmentEnumToTickets < ActiveRecord::Migration[7.2]
  def change
    add_column :tickets, :department, :string
  end
end
