require 'spec_helper'

describe "when a user visits the index page" do
pending it "displays all items" do
    visit items_path
    expect(page).to have_content "All Items"
  end
end

