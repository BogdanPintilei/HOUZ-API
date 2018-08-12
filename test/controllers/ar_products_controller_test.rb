require 'test_helper'

class ArProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ar_product = ar_products(:one)
  end

  test "should get index" do
    get ar_products_url
    assert_response :success
  end

  test "should get new" do
    get new_ar_product_url
    assert_response :success
  end

  test "should create ar_product" do
    assert_difference('ArProduct.count') do
      post ar_products_url, params: { ar_product: { image_url: @ar_product.image_url, product_description: @ar_product.product_description, product_name: @ar_product.product_name } }
    end

    assert_redirected_to ar_product_url(ArProduct.last)
  end

  test "should show ar_product" do
    get ar_product_url(@ar_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_ar_product_url(@ar_product)
    assert_response :success
  end

  test "should update ar_product" do
    patch ar_product_url(@ar_product), params: { ar_product: { image_url: @ar_product.image_url, product_description: @ar_product.product_description, product_name: @ar_product.product_name } }
    assert_redirected_to ar_product_url(@ar_product)
  end

  test "should destroy ar_product" do
    assert_difference('ArProduct.count', -1) do
      delete ar_product_url(@ar_product)
    end

    assert_redirected_to ar_products_url
  end
end
