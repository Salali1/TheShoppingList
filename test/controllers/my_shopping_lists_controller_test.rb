require "test_helper"

class MyShoppingListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_shopping_list = my_shopping_lists(:one)
  end

  test "should get index" do
    get my_shopping_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_my_shopping_list_url
    assert_response :success
  end

  test "should create my_shopping_list" do
    assert_difference('MyShoppingList.count') do
      post my_shopping_lists_url, params: { my_shopping_list: { Date: @my_shopping_list.Date, ShoppingList: @my_shopping_list.ShoppingList, place: @my_shopping_list.place, title: @my_shopping_list.title } }
    end

    assert_redirected_to my_shopping_list_url(MyShoppingList.last)
  end

  test "should show my_shopping_list" do
    get my_shopping_list_url(@my_shopping_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_shopping_list_url(@my_shopping_list)
    assert_response :success
  end

  test "should update my_shopping_list" do
    patch my_shopping_list_url(@my_shopping_list), params: { my_shopping_list: { Date: @my_shopping_list.Date, ShoppingList: @my_shopping_list.ShoppingList, place: @my_shopping_list.place, title: @my_shopping_list.title } }
    assert_redirected_to my_shopping_list_url(@my_shopping_list)
  end

  test "should destroy my_shopping_list" do
    assert_difference('MyShoppingList.count', -1) do
      delete my_shopping_list_url(@my_shopping_list)
    end

    assert_redirected_to my_shopping_lists_url
  end
end
