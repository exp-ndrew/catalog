require 'rails_helper'

describe "adding a new item" do
  it "adds a new item" do
    visit '/'
    click_on 'Add Item'
    fill_in 'Name', :with => 'A Wild Capybara Tester'
    click_on 'Create Item'
    page.should have_content 'A Wild Capybara Tester'
  end
    it "returns an error if the item name is blank" do
    visit '/'
    click_on 'Add Item'
    fill_in 'Name', :with => ''
    click_on 'Create Item'
    page.should have_content 'Please fix these errors:'
  end
end

describe "editing an item" do
  it "allows items to be renamed" do
    Item.create({:name => 'A Wild Capybara Tester'})
    visit '/'
    click_on 'A Wild Capybara Tester'
    click_on 'Edit'
    fill_in 'Name', :with => 'A Tame Capybara Tester'
    click_on 'Update Item'
    page.should have_content 'A Tame Capybara Tester'
  end
  it "returns an error if name is blank" do
    Item.create({:name => 'A Wild Capybara Tester'})
    visit '/'
    click_on 'A Wild Capybara Tester'
    click_on 'Edit'
    fill_in 'Name', :with => ''
    click_on 'Update Item'
    page.should have_content 'Please fix these errors:'
  end
end


