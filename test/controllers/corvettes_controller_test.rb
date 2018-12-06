require 'test_helper'

class CorvettesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @corvette = corvettes(:one)
  end

  test "should get index" do
    get corvettes_url
    assert_response :success
  end

  test "should get new" do
    get new_corvette_url
    assert_response :success
  end

  test "should create corvette" do
    assert_difference('Corvette.count') do
      post corvettes_url, params: { corvette: { body_style: @corvette.body_style, miles: @corvette.miles, year: @corvette.year } }
    end

    assert_redirected_to corvette_url(Corvette.last)
  end

  test "should show corvette" do
    get corvette_url(@corvette)
    assert_response :success
  end

  test "should get edit" do
    get edit_corvette_url(@corvette)
    assert_response :success
  end

  test "should update corvette" do
    patch corvette_url(@corvette), params: { corvette: { body_style: @corvette.body_style, miles: @corvette.miles, year: @corvette.year } }
    assert_redirected_to corvette_url(@corvette)
  end

  test "should destroy corvette" do
    assert_difference('Corvette.count', -1) do
      delete corvette_url(@corvette)
    end

    assert_redirected_to corvettes_url
  end
end
