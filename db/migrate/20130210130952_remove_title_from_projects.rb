class RemoveTitleFromProjects < ActiveRecord::Migration
  def up
    remove_column :projects, :title
      end

  def down
    add_column :projects, :title, :string
  end
end
