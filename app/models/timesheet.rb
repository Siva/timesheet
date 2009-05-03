class Timesheet < ActiveRecord::Base
  has_many :entries
  belongs_to :user
  validates_presence_of :start_date, :end_date, :user_id, :message => "can't be blank"

  def validate
    errors.add_to_base("End date should be greater than start date") unless end_date && start_date && end_date >= start_date
  end
    
  def entry_attributes=(entry_attributes)
    entry_attributes.each do |attributes|
      puts attributes
      entries.build(attributes)
    end
  end

  named_scope :recent, lambda { |user_id|
  {:conditions => ["user_id = ?", user_id], :order => :start_date,:limit => 5} 
  }
  
end
