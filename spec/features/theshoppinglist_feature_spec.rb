require "rails_helper"

RSpec.feature "MyShoppingList", type: :feature do
    context "Create myshoppinglist" do
        before(:each) do
          user = FactoryBot.create(:user)
          login_as(user)
          visit new_my_shopping_list_path
        end

        scenario "should be successful" do
            within("form") do
              fill_in "ShoppingList", with: "New ShoppingList content"
              fill_in "Title", with: "New title content"
            end
            click_button "Create My shopping list"
            expect(page).to have_content("My shopping list was successfully created")
          end
          scenario "should fail" do
            within("form") do
              fill_in "ShoppingList", with: "New ShoppingList content"
            end
            click_button "Create My shopping list"
            expect(page).to have_content("Title can't be blank")
          end
          scenario "should fail" do
            within("form") do
              fill_in "Title", with: "New title content"
            end
            click_button "Create My shopping list"
            expect(page).to have_content("ShoppingList can't be blank")
          end
        end

    context "Update myshoppinglist" do
      let(:my_shopping_list) { MyShoppingList.create(title: "Test title", ShoppingList: "Test content") }
      before(:each) do
        user = FactoryBot.create(:user)
        login_as(user)
        visit edit_my_shopping_list_path(my_shopping_list)
      end
 
 
      scenario "should be successful" do
        within("form") do
          fill_in "ShoppingList", with: "New description content"
        end
        click_button "Update My shopping list"
        expect(page).to have_content("My shopping list was successfully updated")
      end
 
 
      scenario "should fail" do
        within("form") do
          fill_in "ShoppingList", with: ""
        end
        click_button "Update My shopping list"
        expect(page).to have_content("ShoppingList can't be blank")
      end

      scenario "should fail" do
        within("form") do
          fill_in "Title", with: ""
        end
        click_button "Update My shopping list"
        expect(page).to have_content("Title can't be blank")
      end


    end

end