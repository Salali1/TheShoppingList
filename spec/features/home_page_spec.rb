RSpec.feature "HomePages", type: :feature do
    scenario "The visitor should see myshoppinglists" do
      visit root_path
      expect(page).to have_text("My Shopping List")
    end
  end