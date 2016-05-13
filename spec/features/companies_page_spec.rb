require 'rails_helper'
describe "Company page" do
  it "not logged in" do
    visit companies_path
    expect(page).to have_content 'Log in Email Password'
  end
end

describe "the signin process", :type => :feature do
  let(:company){ FactoryGirl.create(:company)}
  let(:restaurant_type){ FactoryGirl.create(:restaurant_type)}
  let(:restaurant){ FactoryGirl.create(:restaurant)}
  let(:contact_person){ FactoryGirl.create(:contact_person)}

  before :each do
    visit companies_path
    fill_in('email', with: "test@test.com")
    fill_in('password', with: 'testi1')
    click_on('Sign in')
  end

  it "settings language change" do
    visit settings_path
    click_on('Englanti')
    expect(page).to have_content 'List of companies'
  end

  it "signs me in" do
    visit companies_path
    expect(page).to have_content 'Lista yrityksistä'
    save_and_open_page
  end

  it "company type" do
    click_on('Yritystyyppi')
    expect(page).to have_content 'Kaikki yritystyypit'
  end

  it "clicks new company" do
    click_on('Yritystyyppi')
    click_on('Luo uusi yritys')
    expect(page).to have_content 'New Company'
  end

  it "restaurant" do
    visit restaurants_path
    expect(page).to have_content 'Lista ravintoloista'
  end

  it "restaurant" do
    visit restaurants_path
    click_on('Uusi ravintola')
    expect(page).to have_content 'Name'
  end
end