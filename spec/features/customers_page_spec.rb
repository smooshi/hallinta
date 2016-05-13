require 'rails_helper'

describe "the signin process", :type => :feature do
  #let(:user){ FactoryGirl.create(:user, :password => "testi1") }
  before :each do
    visit companies_path
    fill_in('email', with: "test@test.com")
    fill_in('password', with: 'testi1')
    click_on('Sign in')
  end

  it "customers page" do
    click_on('Asiakkaat')
    expect(page).to have_content 'Lista asiakkaista'
  end

  it "new customer" do
    visit new_customer_path
    expect(page).to have_content 'New Customer'
  end

  it "new customer" do
    visit new_customer_path
    click_on('Luo Customer')
  end

  it "edit customer" do
    customer = FactoryGirl.create(:customer)
    visit edit_customer_path(customer)
    click_on('Päivitä Customer')
  end
end