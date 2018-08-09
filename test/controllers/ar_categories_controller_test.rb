require 'test_helper'

class ArCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ar_category = ar_categories(:one)
  end

  test "should get index" do
    get ar_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_ar_category_url
    assert_response :success
  end

  test "should create ar_category" do
    assert_difference('ArCategory.count') do
      post ar_categories_url, params: { ar_category: { ar_category_name: @ar_category.ar_category_name, image_url: @ar_category.image_url } }
    end

    assert_redirected_to ar_category_url(ArCategory.last)
  end

  test "should show ar_category" do
    get ar_category_url(@ar_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_ar_category_url(@ar_category)
    assert_response :success
  end

  test "should update ar_category" do
    patch ar_category_url(@ar_category), params: { ar_category: { ar_category_name: @ar_category.ar_category_name, image_url: @ar_category.image_url } }
    assert_redirected_to ar_category_url(@ar_category)
  end

  test "should destroy ar_category" do
    assert_difference('ArCategory.count', -1) do
      delete ar_category_url(@ar_category)
    end

    assert_redirected_to ar_categories_url
  end
end
