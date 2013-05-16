class RemoveReasonForEmploymentFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :reason_for_employment
      end

  def down
    add_column :users, :reason_for_employment, :string
  end
end
