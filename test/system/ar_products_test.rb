require "application_system_test_case"

class ArProductsTest < ApplicationSystemTestCase
  setup do
    @ar_product = ar_products(:one)
  end

  test "visiting the index" do
    visit ar_products_url
    assert_selector "h1", text: "Ar Products"
  end

  test "creating a Ar product" do
    visit ar_products_url
    click_on "New Ar Product"

    fill_in "Product Description", with: @ar_product.product_description
    fill_in "Product Name", with: @ar_product.product_name
    fill_in "Product Serialized Url", with: @ar_product.product_serialized_url
    fill_in "Product Url", with: @ar_product.product_url
    click_on "Create Ar product"

    assert_text "Ar product was successfully created"
    click_on "Back"
  end

  test "updating a Ar product" do
    visit ar_products_url
    click_on "Edit", match: :first

    fill_in "Product Description", with: @ar_product.product_description
    fill_in "Product Name", with: @ar_product.product_name
    fill_in "Product Serialized Url", with: @ar_product.product_serialized_url
    fill_in "Product Url", with: @ar_product.product_url
    click_on "Update Ar product"

    assert_text "Ar product was successfully updated"
    click_on "Back"
  end

  test "destroying a Ar product" do
    visit ar_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ar product was successfully destroyed"
  end
end
