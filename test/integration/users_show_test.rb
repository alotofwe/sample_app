require 'test_helper'

class UsersShowTest < ActionDispatch::IntegrationTest

  def setup
    @activated_user = users(:michael)
    @unactivated_user = users(:alotofwe)
  end

  test "show as unactivated user" do
    get user_path(@unactivated_user)
    assert_redirected_to root_url
    follow_redirect!
    assert_template '/'
  end

  test "show as activated user" do
    get user_path(@activated_user)
    assert_template 'users/show'
  end
end
