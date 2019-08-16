require 'rails_helper'

describe "the add a product process" do
  it "adds a new album" do
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
