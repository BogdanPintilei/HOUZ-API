require "application_system_test_case"

class ArSubcategoriesTest < ApplicationSystemTestCase
  setup do
    @ar_subcategory = ar_subcategories(:one)
  end

  test "visiting the index" do
    visit ar_subcategories_url
    assert_selector "h1", text: "Ar Subcategories"
  end

  test "creating a Ar subcategory" do
    visit ar_subcategories_url
    click_on "New Ar Subcategory"

    fill_in "Ar Subcategory Name", with: @ar_subcategory.ar_subcategory_name
    fill_in "Image Url", with: @ar_subcategory.image_url
    click_on "Create Ar subcategory"

    assert_text "Ar subcategory was successfully created"
    click_on "Back"
  end

  test "updating a Ar subcategory" do
    visit ar_subcategories_url
    click_on "Edit", match: :first

    fill_in "Ar Subcategory Name", with: @ar_subcategory.ar_subcategory_name
    fill_in "Image Url", with: @ar_subcategory.image_url
    click_on "Update Ar subcategory"

    assert_text "Ar subcategory was successfully updated"
    click_on "Back"
  end

  test "destroying a Ar subcategory" do
    visit ar_subcategories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ar subcategory was successfully destroyed"
  end
end
