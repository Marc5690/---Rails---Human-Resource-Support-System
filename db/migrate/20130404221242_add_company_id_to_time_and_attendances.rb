class AddCompanyIdToTimeAndAttendances < ActiveRecord::Migration
  def change
    add_column :time_and_attendances, :company_id, :integer

  end
end
