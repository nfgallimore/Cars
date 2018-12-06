require "application_system_test_case"

class CorvettesTest < ApplicationSystemTestCase
  setup do
    @corvette = corvettes(:one)
  end

  test "visiting the index" do
    visit corvettes_url
    assert_selector "h1", text: "Corvettes"
  end

  test "creating a Corvette" do
    visit corvettes_url
    click_on "New Corvette"

    fill_in "Body style", with: @corvette.body_style
    fill_in "Miles", with: @corvette.miles
    fill_in "Year", with: @corvette.year
    click_on "Create Corvette"

    assert_text "Corvette was successfully created"
    click_on "Back"
  end

  test "updating a Corvette" do
    visit corvettes_url
    click_on "Edit", match: :first

    fill_in "Body style", with: @corvette.body_style
    fill_in "Miles", with: @corvette.miles
    fill_in "Year", with: @corvette.year
    click_on "Update Corvette"

    assert_text "Corvette was successfully updated"
    click_on "Back"
  end

  test "destroying a Corvette" do
    visit corvettes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Corvette was successfully destroyed"
  end
end
