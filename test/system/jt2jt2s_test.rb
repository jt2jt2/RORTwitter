require "application_system_test_case"

class Jt2jt2sTest < ApplicationSystemTestCase
  setup do
    @jt2jt2 = jt2jt2s(:one)
  end

  test "visiting the index" do
    visit jt2jt2s_url
    assert_selector "h1", text: "Jt2jt2s"
  end

  test "creating a Jt2jt2" do
    visit jt2jt2s_url
    click_on "New Jt2jt2"

    fill_in "Content", with: @jt2jt2.content
    click_on "Create Jt2jt2"

    assert_text "Jt2jt2 was successfully created"
    click_on "Back"
  end

  test "updating a Jt2jt2" do
    visit jt2jt2s_url
    click_on "Edit", match: :first

    fill_in "Content", with: @jt2jt2.content
    click_on "Update Jt2jt2"

    assert_text "Jt2jt2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Jt2jt2" do
    visit jt2jt2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Jt2jt2 was successfully destroyed"
  end
end
