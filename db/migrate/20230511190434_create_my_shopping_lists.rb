class CreateMyShoppingLists < ActiveRecord::Migration[6.1]
  def change
    create_table :my_shopping_lists do |t|
      t.string :title
      t.string :place
      t.date :Date
      t.text :ShoppingList

      t.timestamps
    end
  end
end
