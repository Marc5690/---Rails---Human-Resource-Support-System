class AddUserIdToAbsences < ActiveRecord::Migration
  def change
    add_column :absences, :user_id, :integer

  end
end
