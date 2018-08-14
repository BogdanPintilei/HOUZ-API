require 'test_helper'

class ArSubcategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ar_subcategory = ar_subcategories(:one)
  end

  test "should get index" do
    get ar_subcategories_url
    assert_response :success
  end

  test "should get new" do
    get new_ar_subcategory_url
    assert_response :success
  end

  test "should create ar_subcategory" do
    assert_difference('ArSubcategory.count') do
      post ar_subcategories_url, params: { ar_subcategory: { category_id: @ar_subcategory.category_id, image_url: @ar_subcategory.image_url, name: @ar_subcategory.name } }
    end

    assert_redirected_to ar_subcategory_url(ArSubcategory.last)
  end

  test "should show ar_subcategory" do
    get ar_subcategory_url(@ar_subcategory)
    assert_response :success
  end

  test "should get edit" do
    get edit_ar_subcategory_url(@ar_subcategory)
    assert_response :success
  end

  test "should update ar_subcategory" do
    patch ar_subcategory_url(@ar_subcategory), params: { ar_subcategory: { category_id: @ar_subcategory.category_id, image_url: @ar_subcategory.image_url, name: @ar_subcategory.name } }
    assert_redirected_to ar_subcategory_url(@ar_subcategory)
  end

  test "should destroy ar_subcategory" do
    assert_difference('ArSubcategory.count', -1) do
      delete ar_subcategory_url(@ar_subcategory)
    end

    assert_redirected_to ar_subcategories_url
  end
end
