require 'test_helper'

class SmartagricsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @smartagric = smartagrics(:one)
  end

  test "should get index" do
    get smartagrics_url
    assert_response :success
  end

  test "should get new" do
    get new_smartagric_url
    assert_response :success
  end

  test "should create smartagric" do
    assert_difference('Smartagric.count') do
      post smartagrics_url, params: { smartagric: { mositurereads: @smartagric.mositurereads, phreads: @smartagric.phreads } }
    end

    assert_redirected_to smartagric_url(Smartagric.last)
  end

  test "should show smartagric" do
    get smartagric_url(@smartagric)
    assert_response :success
  end

  test "should get edit" do
    get edit_smartagric_url(@smartagric)
    assert_response :success
  end

  test "should update smartagric" do
    patch smartagric_url(@smartagric), params: { smartagric: { mositurereads: @smartagric.mositurereads, phreads: @smartagric.phreads } }
    assert_redirected_to smartagric_url(@smartagric)
  end

  test "should destroy smartagric" do
    assert_difference('Smartagric.count', -1) do
      delete smartagric_url(@smartagric)
    end

    assert_redirected_to smartagrics_url
  end
end
