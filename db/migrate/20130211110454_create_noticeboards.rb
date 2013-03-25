class CreateNoticeboards < ActiveRecord::Migration
  def change
    create_table :noticeboards do |t|
      t.text :content

      t.timestamps
    end
  end
end
