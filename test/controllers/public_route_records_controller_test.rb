require 'test_helper'

class PublicRouteRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @public_route_record = public_route_records(:one)
  end

  test "should get index" do
    get public_route_records_url
    assert_response :success
  end

  test "should get new" do
    get new_public_route_record_url
    assert_response :success
  end

  test "should create public_route_record" do
    assert_difference('PublicRouteRecord.count') do
      post public_route_records_url, params: { public_route_record: { location: @public_route_record.location, petID: @public_route_record.petID, route: @public_route_record.route, userID: @public_route_record.userID } }
    end

    assert_redirected_to public_route_record_url(PublicRouteRecord.last)
  end

  test "should show public_route_record" do
    get public_route_record_url(@public_route_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_public_route_record_url(@public_route_record)
    assert_response :success
  end

  test "should update public_route_record" do
    patch public_route_record_url(@public_route_record), params: { public_route_record: { location: @public_route_record.location, petID: @public_route_record.petID, route: @public_route_record.route, userID: @public_route_record.userID } }
    assert_redirected_to public_route_record_url(@public_route_record)
  end

  test "should destroy public_route_record" do
    assert_difference('PublicRouteRecord.count', -1) do
      delete public_route_record_url(@public_route_record)
    end

    assert_redirected_to public_route_records_url
  end
end
