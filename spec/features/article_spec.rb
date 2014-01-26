require 'spec_helper'
require 'capybara/rails'
require 'capybara/rspec'

describe Article do
  
  it "displays all articles" do
    page.visit articles_path
    expect(page).to have_content("Articles!")
  end
end
