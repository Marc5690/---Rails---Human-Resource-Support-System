class RemoveStatusFromAbsences < ActiveRecord::Migration
  def up
    remove_column :absences, :status
      end

  def down
    add_column :absences, :status, :string
  end
end
