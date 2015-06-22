require 'test_helper'

class StaticPagesHomeTest < ActionDispatch::IntegrationTest
  include ApplicationHelper

  def setup
    @user = users(:michael)
  end

  test "home display (logged in)" do
    log_in_as(@user)
    get root_path
    assert_template 'static_pages/home'
    # Valid stats
    assert_select 'strong#following', text: @user.following.count.to_s
    assert_select 'strong#followers', text: @user.followers.count.to_s
  end
end
