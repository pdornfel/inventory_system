require 'spec_helper'

describe "An employee wants to receive inventory" do

  it "employee enters in valid information" do
    item = FactoryGirl.build(:item)

    visit new_item_path
    fill_in "Title", with: item.title
    fill_in "Description", with: item.description
    fill_in "Quantity", with: item.quantity
    click_on "Create Item"

    expect(page).to have_content "Item was created Successfully"

  end

end