class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string :name
      t.timestamps
    end
    populate
  end
  
  def self.populate
    roles = [{:name=>'admin'}, {:name=>'employee'}, {:name=>'employer'}]
    roles.each{|role| Role.new(role).save}
  end

  def self.down
    drop_table :roles
  end
end
