class CreateTimesheets < ActiveRecord::Migration
  def self.up
    create_table :timesheets do |t|
      t.date :start_date
      t.date :end_date
      t.integer :user_id
      t.boolean :status
      t.timestamps
    end
  end

  def self.down
    drop_table :timesheets
  end
end
