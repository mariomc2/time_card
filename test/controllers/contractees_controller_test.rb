require 'test_helper'

class ContracteesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contractee = contractees(:one)
  end

  test "should get index" do
    get contractees_url
    assert_response :success
  end

  test "should get new" do
    get new_contractee_url
    assert_response :success
  end

  test "should create contractee" do
    assert_difference('Contractee.count') do
      post contractees_url, params: { contractee: { acc_active: @contractee.acc_active, email: @contractee.email, last_in: @contractee.last_in, name: @contractee.name, pass_active: @contractee.pass_active, password_digest: @contractee.password_digest } }
    end

    assert_redirected_to contractee_url(Contractee.last)
  end

  test "should show contractee" do
    get contractee_url(@contractee)
    assert_response :success
  end

  test "should get edit" do
    get edit_contractee_url(@contractee)
    assert_response :success
  end

  test "should update contractee" do
    patch contractee_url(@contractee), params: { contractee: { acc_active: @contractee.acc_active, email: @contractee.email, last_in: @contractee.last_in, name: @contractee.name, pass_active: @contractee.pass_active, password_digest: @contractee.password_digest } }
    assert_redirected_to contractee_url(@contractee)
  end

  test "should destroy contractee" do
    assert_difference('Contractee.count', -1) do
      delete contractee_url(@contractee)
    end

    assert_redirected_to contractees_url
  end
end
