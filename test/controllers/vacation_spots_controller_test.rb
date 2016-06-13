require 'test_helper'

class VacationSpotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vacation_spot = vacation_spots(:one)
  end

  test "should get index" do
    get vacation_spots_url
    assert_response :success
  end

  test "should get new" do
    get new_vacation_spot_url
    assert_response :success
  end

  test "should create vacation_spot" do
    assert_difference('VacationSpot.count') do
      post vacation_spots_url, params: { vacation_spot: { name: @vacation_spot.name } }
    end

    assert_redirected_to vacation_spot_path(VacationSpot.last)
  end

  test "should show vacation_spot" do
    get vacation_spot_url(@vacation_spot)
    assert_response :success
  end

  test "should get edit" do
    get edit_vacation_spot_url(@vacation_spot)
    assert_response :success
  end

  test "should update vacation_spot" do
    patch vacation_spot_url(@vacation_spot), params: { vacation_spot: { name: @vacation_spot.name } }
    assert_redirected_to vacation_spot_path(@vacation_spot)
  end

  test "should destroy vacation_spot" do
    assert_difference('VacationSpot.count', -1) do
      delete vacation_spot_url(@vacation_spot)
    end

    assert_redirected_to vacation_spots_path
  end
end
