class AddCompanyIdToAbsences < ActiveRecord::Migration
  def change
    add_column :absences, :company_id, :integer

  end
end
