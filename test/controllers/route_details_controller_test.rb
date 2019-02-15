require 'test_helper'

class RouteDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @route_detail = route_details(:one)
  end

  test "should get index" do
    get route_details_url
    assert_response :success
  end

  test "should get new" do
    get new_route_detail_url
    assert_response :success
  end

  test "should create route_detail" do
    assert_difference('RouteDetail.count') do
      post route_details_url, params: { route_detail: { avgPace: @route_detail.avgPace, avgSpeed: @route_detail.avgSpeed, date: @route_detail.date, maxPace: @route_detail.maxPace, maxSpeed: @route_detail.maxSpeed, movingPace: @route_detail.movingPace, movingSpeed: @route_detail.movingSpeed, movingTime: @route_detail.movingTime, routeLength: @route_detail.routeLength, totalTime: @route_detail.totalTime } }
    end

    assert_redirected_to route_detail_url(RouteDetail.last)
  end

  test "should show route_detail" do
    get route_detail_url(@route_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_route_detail_url(@route_detail)
    assert_response :success
  end

  test "should update route_detail" do
    patch route_detail_url(@route_detail), params: { route_detail: { avgPace: @route_detail.avgPace, avgSpeed: @route_detail.avgSpeed, date: @route_detail.date, maxPace: @route_detail.maxPace, maxSpeed: @route_detail.maxSpeed, movingPace: @route_detail.movingPace, movingSpeed: @route_detail.movingSpeed, movingTime: @route_detail.movingTime, routeLength: @route_detail.routeLength, totalTime: @route_detail.totalTime } }
    assert_redirected_to route_detail_url(@route_detail)
  end

  test "should destroy route_detail" do
    assert_difference('RouteDetail.count', -1) do
      delete route_detail_url(@route_detail)
    end

    assert_redirected_to route_details_url
  end
end
