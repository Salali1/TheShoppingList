require "application_system_test_case"

class MyShoppingListsTest < ApplicationSystemTestCase
  setup do
    @my_shopping_list = my_shopping_lists(:one)
  end

  test "visiting the index" do
    visit my_shopping_lists_url
    assert_selector "h1", text: "My Shopping Lists"
  end

  test "creating a My shopping list" do
    visit my_shopping_lists_url
    click_on "New My Shopping List"

    fill_in "Date", with: @my_shopping_list.Date
    fill_in "Shoppinglist", with: @my_shopping_list.ShoppingList
    fill_in "Place", with: @my_shopping_list.place
    fill_in "Title", with: @my_shopping_list.title
    click_on "Create My shopping list"

    assert_text "My shopping list was successfully created"
    click_on "Back"
  end

  test "updating a My shopping list" do
    visit my_shopping_lists_url
    click_on "Edit", match: :first

    fill_in "Date", with: @my_shopping_list.Date
    fill_in "Shoppinglist", with: @my_shopping_list.ShoppingList
    fill_in "Place", with: @my_shopping_list.place
    fill_in "Title", with: @my_shopping_list.title
    click_on "Update My shopping list"

    assert_text "My shopping list was successfully updated"
    click_on "Back"
  end

  test "destroying a My shopping list" do
    visit my_shopping_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "My shopping list was successfully destroyed"
  end
end
