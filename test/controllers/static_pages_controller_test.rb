require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  def setup
    @second_title = "Ruby on Rails Tutorial Sample App"
  end
  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | #{@second_title}"
  end

  test "should get help" do
    get :help
    assert_select "title", "Help | #{@second_title}"
  end

  test "should get home" do
    get :home
    assert_select "title", "Home | #{@second_title}"
  end

end
