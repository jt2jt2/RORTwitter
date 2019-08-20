require 'test_helper'

class Jt2jt2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jt2jt2 = jt2jt2s(:one)
  end

  test "should get index" do
    get jt2jt2s_url
    assert_response :success
  end

  test "should get new" do
    get new_jt2jt2_url
    assert_response :success
  end

  test "should create jt2jt2" do
    assert_difference('Jt2jt2.count') do
      post jt2jt2s_url, params: { jt2jt2: { content: @jt2jt2.content } }
    end

    assert_redirected_to jt2jt2_url(Jt2jt2.last)
  end

  test "should show jt2jt2" do
    get jt2jt2_url(@jt2jt2)
    assert_response :success
  end

  test "should get edit" do
    get edit_jt2jt2_url(@jt2jt2)
    assert_response :success
  end

  test "should update jt2jt2" do
    patch jt2jt2_url(@jt2jt2), params: { jt2jt2: { content: @jt2jt2.content } }
    assert_redirected_to jt2jt2_url(@jt2jt2)
  end

  test "should destroy jt2jt2" do
    assert_difference('Jt2jt2.count', -1) do
      delete jt2jt2_url(@jt2jt2)
    end

    assert_redirected_to jt2jt2s_url
  end
end
