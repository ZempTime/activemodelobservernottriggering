require 'test_helper'

class HooplahsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hooplah = hooplahs(:one)
  end

  test "should get index" do
    get hooplahs_url
    assert_response :success
  end

  test "should get new" do
    get new_hooplah_url
    assert_response :success
  end

  test "should create hooplah" do
    assert_difference('Hooplah.count') do
      post hooplahs_url, params: { hooplah: { description: @hooplah.description, vacation_spot_id: @hooplah.vacation_spot_id } }
    end

    assert_redirected_to hooplah_path(Hooplah.last)
  end

  test "should show hooplah" do
    get hooplah_url(@hooplah)
    assert_response :success
  end

  test "should get edit" do
    get edit_hooplah_url(@hooplah)
    assert_response :success
  end

  test "should update hooplah" do
    patch hooplah_url(@hooplah), params: { hooplah: { description: @hooplah.description, vacation_spot_id: @hooplah.vacation_spot_id } }
    assert_redirected_to hooplah_path(@hooplah)
  end

  test "should destroy hooplah" do
    assert_difference('Hooplah.count', -1) do
      delete hooplah_url(@hooplah)
    end

    assert_redirected_to hooplahs_path
  end
end
