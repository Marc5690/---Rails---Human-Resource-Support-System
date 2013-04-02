class AddTempuserToAbsences < ActiveRecord::Migration
  def change
    add_column :absences, :tempuser, :integer

  end
end
