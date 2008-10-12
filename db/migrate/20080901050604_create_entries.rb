class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.date :date
      t.integer :hours
      t.integer :timesheet_id

      t.timestamps
    end
  end

  def self.down
    drop_table :entries
  end
end
