require 'test_helper'

class TimesheetTest < ActiveSupport::TestCase
  load_all_fixtures
  should_belong_to :user
  should_require_attributes :start_date, :end_date, :user_id
end
