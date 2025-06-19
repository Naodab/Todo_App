require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template "static_pages/home"
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", about_static_pages_path

    get about_static_pages_path
    assert_select "title", full_title("About")

    get root_path
    assert_select "title", full_title
  end
end
