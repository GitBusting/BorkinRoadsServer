require "application_system_test_case"

class PublicRouteRecordsTest < ApplicationSystemTestCase
  setup do
    @public_route_record = public_route_records(:one)
  end

  test "visiting the index" do
    visit public_route_records_url
    assert_selector "h1", text: "Public Route Records"
  end

  test "creating a Public route record" do
    visit public_route_records_url
    click_on "New Public Route Record"

    fill_in "Location", with: @public_route_record.location
    fill_in "Petid", with: @public_route_record.petID
    fill_in "Route", with: @public_route_record.route
    fill_in "Userid", with: @public_route_record.userID
    click_on "Create Public route record"

    assert_text "Public route record was successfully created"
    click_on "Back"
  end

  test "updating a Public route record" do
    visit public_route_records_url
    click_on "Edit", match: :first

    fill_in "Location", with: @public_route_record.location
    fill_in "Petid", with: @public_route_record.petID
    fill_in "Route", with: @public_route_record.route
    fill_in "Userid", with: @public_route_record.userID
    click_on "Update Public route record"

    assert_text "Public route record was successfully updated"
    click_on "Back"
  end

  test "destroying a Public route record" do
    visit public_route_records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Public route record was successfully destroyed"
  end
end
