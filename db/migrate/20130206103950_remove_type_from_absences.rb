class RemoveTypeFromAbsences < ActiveRecord::Migration
  def up
    remove_column :absences, :type
      end

  def down
    add_column :absences, :type, :string
  end
end
