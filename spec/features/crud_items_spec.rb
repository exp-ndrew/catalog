require 'rails_helper'

describe "adding a new item" do
  it "adds a new item" do
    visit '/'
    click_on 'Add Item'
    fill_in 'Name', :with => 'A wild capybara tester'
    click_on 'Create Item'
    page.should have_content 'A wild capybara tester'
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
    Item.create({:name => 'A wild capybara tester'})
    visit '/'
    click_on 'A wild capybara tester'
    click_on 'Edit'
    fill_in 'Name', :with => 'A tame capybara tester'
    click_on 'Update Item'
    page.should have_content 'A tame capybara tester'
  end
  it "returns an error if name is blank" do
    Item.create({:name => 'A wild capybara tester'})
    visit '/'
    click_on 'A wild capybara tester'
    click_on 'Edit'
    fill_in 'Name', :with => ''
    click_on 'Update Item'
    page.should have_content 'Please fix these errors:'
  end
end

describe "deleting an item" do
  it "allows items to be deleted" do
    Item.create({:name => 'A wild capybara tester'})
    visit '/'
    click_on 'A wild capybara tester'
    click_on 'Delete'
    page.should have_content 'A wild capybara tester'
  end
end


