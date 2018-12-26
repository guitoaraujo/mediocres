require "application_system_test_case"

class PearlsTest < ApplicationSystemTestCase
  setup do
    @pearl = pearls(:one)
  end

  test "visiting the index" do
    visit pearls_url
    assert_selector "h1", text: "Pearls"
  end

  test "creating a Pearl" do
    visit pearls_url
    click_on "New Pearl"

    fill_in "Quote", with: @pearl.quote
    fill_in "User", with: @pearl.user_id
    click_on "Create Pearl"

    assert_text "Pearl was successfully created"
    click_on "Back"
  end

  test "updating a Pearl" do
    visit pearls_url
    click_on "Edit", match: :first

    fill_in "Quote", with: @pearl.quote
    fill_in "User", with: @pearl.user_id
    click_on "Update Pearl"

    assert_text "Pearl was successfully updated"
    click_on "Back"
  end

  test "destroying a Pearl" do
    visit pearls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pearl was successfully destroyed"
  end
end
