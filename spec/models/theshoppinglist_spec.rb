require "rails_helper"

RSpec.describe "MyShoppingList Attribute Requirements on Create", :type => :model do
  context "validation tests" do
    it "ensures the title is present when creating the shopping list" do
      my_shopping_list = MyShoppingList.new(ShoppingList: "Content of the shopping list")
      expect(my_shopping_list.valid?).to eq(false)
    end
    it "should not be able to save the shopping list when title is missing" do
      my_shopping_list = MyShoppingList.new(ShoppingList: "Some shopping list content goes here")
      expect(my_shopping_list.save).to eq(false)
    end
    it "should be able to save the shopping list when it has title and shopping list content" do
      my_shopping_list = MyShoppingList.new(title: "Title", ShoppingList: "Content of the shopping list")
      expect(my_shopping_list.save).to eq(true)
    end
  end
end

RSpec.describe "MyShoppingList Attribute Requirements on Edit", :type => :model do
  context "Edit my shopping list" do  
    before (:each) do
      @my_shopping_list = MyShoppingList.create(title: "Title", ShoppingList: "Content of the ShoppingList")
    end
    it "ensures the title is present when editing my shopping list" do
      @my_shopping_list.update(title: "New Title")
      expect(@my_shopping_list.title).to eq("New Title")
    end
  end
end
