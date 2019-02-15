require "application_system_test_case"

class RouteDetailsTest < ApplicationSystemTestCase
  setup do
    @route_detail = route_details(:one)
  end

  test "visiting the index" do
    visit route_details_url
    assert_selector "h1", text: "Route Details"
  end

  test "creating a Route detail" do
    visit route_details_url
    click_on "New Route Detail"

    fill_in "Avgpace", with: @route_detail.avgPace
    fill_in "Avgspeed", with: @route_detail.avgSpeed
    fill_in "Date", with: @route_detail.date
    fill_in "Maxpace", with: @route_detail.maxPace
    fill_in "Maxspeed", with: @route_detail.maxSpeed
    fill_in "Movingpace", with: @route_detail.movingPace
    fill_in "Movingspeed", with: @route_detail.movingSpeed
    fill_in "Movingtime", with: @route_detail.movingTime
    fill_in "Routelength", with: @route_detail.routeLength
    fill_in "Totaltime", with: @route_detail.totalTime
    click_on "Create Route detail"

    assert_text "Route detail was successfully created"
    click_on "Back"
  end

  test "updating a Route detail" do
    visit route_details_url
    click_on "Edit", match: :first

    fill_in "Avgpace", with: @route_detail.avgPace
    fill_in "Avgspeed", with: @route_detail.avgSpeed
    fill_in "Date", with: @route_detail.date
    fill_in "Maxpace", with: @route_detail.maxPace
    fill_in "Maxspeed", with: @route_detail.maxSpeed
    fill_in "Movingpace", with: @route_detail.movingPace
    fill_in "Movingspeed", with: @route_detail.movingSpeed
    fill_in "Movingtime", with: @route_detail.movingTime
    fill_in "Routelength", with: @route_detail.routeLength
    fill_in "Totaltime", with: @route_detail.totalTime
    click_on "Update Route detail"

    assert_text "Route detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Route detail" do
    visit route_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Route detail was successfully destroyed"
  end
end
