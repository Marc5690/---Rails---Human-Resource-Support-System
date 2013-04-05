class AddCompanyIdToNoticeboards < ActiveRecord::Migration
  def change
    add_column :noticeboards, :company_id, :integer

  end
end
