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

  it "new company fails" do
    click_on('Yritystyyppi')
    click_on('Luo uusi yritys')
    expect(page).to have_content 'New Company'
    fill_in('company_email', with: "e@e.com")
    click_on('Luo Company')
    expect(page).to have_content 'error'
  end

  it "restaurant" do
    visit restaurants_path
    expect(page).to have_content 'Lista ravintoloista'
  end

  it "new restaurant" do
    visit restaurants_path
    click_on('Uusi ravintola')
    click_on('Submit')
    expect(page).to have_content 'error'
  end

  it "contact people" do
    visit new_contact_person_path
    expect(page).to have_content 'New Contact Person'
  end

  it "new contact people" do
    visit new_contact_person_path
    fill_in('contact_person_name', with: "Milla")
    fill_in('contact_person_email', with: "a@a.com")
    click_on('Luo Contact person')
    expect(page).to have_content 'success'
  end

  it "show company" do
    company = FactoryGirl.create(:company)
    visit contact_person_path(company)
  end

  it "show restaurant" do
    restaurant = FactoryGirl.create(:restaurant)
    visit restaurant_path(restaurant)
  end

end