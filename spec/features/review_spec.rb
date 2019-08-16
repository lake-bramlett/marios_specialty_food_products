require 'rails_helper'

describe "the add review process" do
  it "adds a review to a product" do
    visit root_path
    click_link 'Add a product'
    fill_in 'Name', :with => 'Cheeseburger'
    fill_in 'Cost', :with => '12.21'
    fill_in 'Country of origin', :with => 'United States'
    click_on 'Create Product'
    click_link 'Cheeseburger'
    click_link 'Add a review'
    fill_in 'Author', :with => 'Burgerlover42'
    fill_in 'Content body', :with => 'These burgers are so great! Give me more of them burgers! Yum yum yum!'
    fill_in 'Rating', :with => '5'
    click_on 'commit'
    expect(page).to have_content 'Burgerlover42'
    expect(page).to have_content 'These burgers are so great! Give me more of them burgers! Yum yum yum!'
    expect(page).to have_content '5/5'

  end
end
