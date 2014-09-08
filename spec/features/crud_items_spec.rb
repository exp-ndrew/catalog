require 'rails_helper'

describe "adding a new item" do
  it "adds a new item" do
    visit '/'
    click_on 'Add Item'
    fill_in 'Name', :with => 'A Wild Capybara Tester'
    click_on 'Add Item'
    page.should have_content 'A Wild Capybara Tester'
  end
    it "returns an error if the item name is blank" do
    visit '/'
    click_on 'Add Item'
    fill_in 'Name', :with => ''
    click_on 'Add Item'
    page.should have_content 'Please fix these errors:'
  end


end
