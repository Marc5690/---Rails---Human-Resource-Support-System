class AddPersonnelNumberToUsers < ActiveRecord::Migration
  def change
    add_column :users, :personnel_number, :string

  end
end
