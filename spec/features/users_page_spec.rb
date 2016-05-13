require 'rails_helper'
describe "Users page" do
  before :each do
    visit companies_path
    fill_in('email', with: "test@test.com")
    fill_in('password', with: 'testi1')
    click_on('Sign in')
    click_on('Sopimukset')
  end

  it "index" do
    visit users_path
    expect(page).to have_content 'Kaikki käyttäjät'
  end

  it "new page" do
    visit new_user_path
    expect(page).to have_content 'New User'
  end

  it "click new page" do
    visit new_user_path
    click_on('Luo User')
  end

  it "edit user" do
    user = FactoryGirl.create(:admin, :password => "testi1")
    visit edit_user_path(user)
    expect(page).to have_content 'Käyttäjätiedot'
  end
end