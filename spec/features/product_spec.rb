require 'rails_helper'

describe "the add product process" do

  it "adds a new product" do
    user = FactoryBot.create(:user)
    login_as(user, :scope => :user)
    visit root_path
    click_link 'Add a product'
    fill_in 'Name', :with => 'Cheeseburger'
    fill_in 'Cost', :with => '12.21'
    fill_in 'Country of origin', :with => 'United States'
    click_on 'Create Product'
    expect(page).to have_content 'Product successfully added!'
    expect(page).to have_content 'Cheeseburger'
    expect(page).to have_content '$12.21'
    expect(page).to have_content 'United States'
  end
end

describe "the edit a product process" do
  it "edits a pre-existing album" do
    user = FactoryBot.create(:user)
    login_as(user, :scope => :user)
    visit root_path
    click_link 'Add a product'
    fill_in 'Name', :with => 'Cheeseburger'
    fill_in 'Cost', :with => '12.21'
    fill_in 'Country of origin', :with => 'United States'
    click_on 'Create Product'
    click_link 'Cheeseburger'
    click_on 'Edit product'
    fill_in 'Cost', :with => '11.21'
    click_on 'commit'
    expect(page).to have_content 'Cheeseburger'
    expect(page).to have_content '$11.21'
    expect(page).to have_content 'United States'
  end
end

describe "the delete a product process" do
  it "deletes a pre-existing album" do
    user = FactoryBot.create(:user)
    login_as(user, :scope => :user)
    visit root_path
    click_link 'Add a product'
    fill_in 'Name', :with => 'Cheeseburger'
    fill_in 'Cost', :with => '12.21'
    fill_in 'Country of origin', :with => 'United States'
    click_on 'Create Product'
    click_link 'Cheeseburger'
    click_link 'Edit product'
    click_link 'Delete product'
    expect(page).to_not have_content 'Cheeseburger'
  end
end
