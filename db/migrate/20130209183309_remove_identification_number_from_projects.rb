class RemoveIdentificationNumberFromProjects < ActiveRecord::Migration
  def up
    remove_column :projects, :identification_number
      end

  def down
    add_column :projects, :identification_number, :integer
  end
end
