require 'test_helper'

class FeedItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @feed_item = feed_items(:one)
  end

  test "should get index" do
    get feed_items_url
    assert_response :success
  end

  test "should get new" do
    get new_feed_item_url
    assert_response :success
  end

  test "should create feed_item" do
    assert_difference('FeedItem.count') do
      post feed_items_url, params: { feed_item: { image_url: @feed_item.image_url, item_description: @feed_item.item_description, type: @feed_item.type, user_id: @feed_item.user_id, username: @feed_item.username, video_url: @feed_item.video_url } }
    end

    assert_redirected_to feed_item_url(FeedItem.last)
  end

  test "should show feed_item" do
    get feed_item_url(@feed_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_feed_item_url(@feed_item)
    assert_response :success
  end

  test "should update feed_item" do
    patch feed_item_url(@feed_item), params: { feed_item: { image_url: @feed_item.image_url, item_description: @feed_item.item_description, type: @feed_item.type, user_id: @feed_item.user_id, username: @feed_item.username, video_url: @feed_item.video_url } }
    assert_redirected_to feed_item_url(@feed_item)
  end

  test "should destroy feed_item" do
    assert_difference('FeedItem.count', -1) do
      delete feed_item_url(@feed_item)
    end

    assert_redirected_to feed_items_url
  end
end
