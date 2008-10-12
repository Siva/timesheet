require File.dirname(__FILE__) + '/../test_helper'
require 'users_controller'

# Re-raise errors caught by the controller.
class UsersController; def rescue_action(e) raise e end; end

class UsersControllerTest < ActionController::TestCase
  include AuthenticatedTestHelper

  context "test should allow signup" do

    def test_should_allow_signup
      assert_difference 'User.count' do
        create_user
        assert_response :redirect
      end
    end

    def test_should_require_login_on_signup
      assert_no_difference 'User.count' do
        create_user(:login => nil)
        assert assigns(:user).errors.on(:login)
        assert_response :success
      end
    end

    def test_should_require_password_on_signup
      assert_no_difference 'User.count' do
        create_user(:password => nil)
        assert assigns(:user).errors.on(:password)
        assert_response :success
      end
    end

    def test_should_require_password_confirmation_on_signup
      assert_no_difference 'User.count' do
        create_user(:password_confirmation => nil)
        assert assigns(:user).errors.on(:password_confirmation)
        assert_response :success
      end
    end

    def test_should_require_email_on_signup
      assert_no_difference 'User.count' do
        create_user(:email => nil)
        assert assigns(:user).errors.on(:email)
        assert_response :success
      end
    end

  end

  protected

  def new_user(options = {})
    Factory.create(:user).attributes.merge(options)
  end

  def create_user(options = {})
    post :create, :user => new_user(options)
  end

end
