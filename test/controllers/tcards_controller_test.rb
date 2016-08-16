require 'test_helper'

class TcardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tcard = tcards(:one)
  end

  test "should get index" do
    get tcards_url
    assert_response :success
  end

  test "should get new" do
    get new_tcard_url
    assert_response :success
  end

  test "should create tcard" do
    assert_difference('Tcard.count') do
      post tcards_url, params: { tcard: { contractee_id: @tcard.contractee_id, contractor_id: @tcard.contractor_id, manager_id: @tcard.manager_id, manager_status: @tcard.manager_status, recruiter_id: @tcard.recruiter_id, supervisor_id: @tcard.supervisor_id, supervisor_status: @tcard.supervisor_status, time_in: @tcard.time_in, time_out: @tcard.time_out } }
    end

    assert_redirected_to tcard_url(Tcard.last)
  end

  test "should show tcard" do
    get tcard_url(@tcard)
    assert_response :success
  end

  test "should get edit" do
    get edit_tcard_url(@tcard)
    assert_response :success
  end

  test "should update tcard" do
    patch tcard_url(@tcard), params: { tcard: { contractee_id: @tcard.contractee_id, contractor_id: @tcard.contractor_id, manager_id: @tcard.manager_id, manager_status: @tcard.manager_status, recruiter_id: @tcard.recruiter_id, supervisor_id: @tcard.supervisor_id, supervisor_status: @tcard.supervisor_status, time_in: @tcard.time_in, time_out: @tcard.time_out } }
    assert_redirected_to tcard_url(@tcard)
  end

  test "should destroy tcard" do
    assert_difference('Tcard.count', -1) do
      delete tcard_url(@tcard)
    end

    assert_redirected_to tcards_url
  end
end
