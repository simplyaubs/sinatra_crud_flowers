require 'spec_helper'
require 'capybara/rspec'

Capybara.app = Application

feature 'Flowers' do
  scenario 'User can see and add flowers' do
    visit '/'
    click_on 'Add a Flower'
    fill_in 'name', with: 'Lotus'
    fill_in 'color', with: 'Pink'
    click_on 'Add Flower'
    expect(page).to have_content 'Lotus'
  end
end