require "application_system_test_case"

class FeedItemsTest < ApplicationSystemTestCase
  setup do
    @feed_item = feed_items(:one)
  end

  test "visiting the index" do
    visit feed_items_url
    assert_selector "h1", text: "Feed Items"
  end

  test "creating a Feed item" do
    visit feed_items_url
    click_on "New Feed Item"

    fill_in "Image Url", with: @feed_item.image_url
    fill_in "Item Description", with: @feed_item.item_description
    fill_in "Type", with: @feed_item.type
    fill_in "User", with: @feed_item.user_id
    fill_in "Username", with: @feed_item.username
    fill_in "Video Url", with: @feed_item.video_url
    click_on "Create Feed item"

    assert_text "Feed item was successfully created"
    click_on "Back"
  end

  test "updating a Feed item" do
    visit feed_items_url
    click_on "Edit", match: :first

    fill_in "Image Url", with: @feed_item.image_url
    fill_in "Item Description", with: @feed_item.item_description
    fill_in "Type", with: @feed_item.type
    fill_in "User", with: @feed_item.user_id
    fill_in "Username", with: @feed_item.username
    fill_in "Video Url", with: @feed_item.video_url
    click_on "Update Feed item"

    assert_text "Feed item was successfully updated"
    click_on "Back"
  end

  test "destroying a Feed item" do
    visit feed_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Feed item was successfully destroyed"
  end
end
