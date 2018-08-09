require "application_system_test_case"

class ArCategoriesTest < ApplicationSystemTestCase
  setup do
    @ar_category = ar_categories(:one)
  end

  test "visiting the index" do
    visit ar_categories_url
    assert_selector "h1", text: "Ar Categories"
  end

  test "creating a Ar category" do
    visit ar_categories_url
    click_on "New Ar Category"

    fill_in "Ar Category Name", with: @ar_category.ar_category_name
    fill_in "Image Url", with: @ar_category.image_url
    click_on "Create Ar category"

    assert_text "Ar category was successfully created"
    click_on "Back"
  end

  test "updating a Ar category" do
    visit ar_categories_url
    click_on "Edit", match: :first

    fill_in "Ar Category Name", with: @ar_category.ar_category_name
    fill_in "Image Url", with: @ar_category.image_url
    click_on "Update Ar category"

    assert_text "Ar category was successfully updated"
    click_on "Back"
  end

  test "destroying a Ar category" do
    visit ar_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ar category was successfully destroyed"
  end
end
