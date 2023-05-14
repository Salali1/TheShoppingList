require "rails_helper"

RSpec.describe MyShoppingListsController, :type => :controller do
    
    describe "test web requests" do
        context "GET #index" do
            it "returns a success response" do
            get :index
            expect(response).to have_http_status(:ok)
        end
    end

    context "GET #show" do
        let!(:my_shopping_list) { MyShoppingList.create(title: "Test title", ShoppingList: "Test ShoppingList") }
        it "returns a success response" do
            expect(response).to have_http_status(:ok)
        end
    end
end
end
