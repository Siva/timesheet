require 'test_helper'

class EntryTest < Test::Unit::TestCase
  fixtures :entries, :timesheets
  should_belong_to :timesheet
end
