json.extract! my_shopping_list, :id, :title, :place, :Date, :ShoppingList, :created_at, :updated_at
json.url my_shopping_list_url(my_shopping_list, format: :json)
