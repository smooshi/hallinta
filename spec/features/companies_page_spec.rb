require 'rails_helper'
describe "sign in" do
  it "not logged in" do
    visit companies_path
    expect(page).to have_content 'Log in Email Password'
  end
end

describe "company page", :type => :feature do
  before :each do
    visit companies_path
    fill_in('email', with: "test@test.com")
    fill_in('password', with: 'testi1')
    click_on('Sign in')
  end

  it "signs me in" do
    visit companies_path
    expect(page).to have_content 'Lista yrityksistä'
  end

  it "company type" do
    click_on('Yritystyyppi')
    expect(page).to have_content 'Kaikki yritystyypit'
  end

  it "edit company type" do
    visit edit_company_type_path(CompanyType.first)
    click_on('Päivitä Company')
    expect(page).to have_content 'success'
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

  it "visit new contact people" do
    visit new_contact_person_path
    fill_in('contact_person_name', with: "Milla")
    fill_in('contact_person_email', with: "a@a.com")
    click_on('Luo Contact person')
    expect(page).to have_content 'success'
  end

  it "show company" do
    visit contact_person_path(Company.first)
  end

  it "edit company" do
    visit edit_company_path(Company.first)
    click_on('Päivitä Company')
  end

  it "show restaurant" do
    visit restaurant_path(Restaurant.first)
  end

  it "edit restaurant" do
    visit edit_restaurant_path(Restaurant.first)
    click_on('Submit')
    expect(page).to have_content 'success'
  end

  it "contact people index" do
    visit contact_people_path
    expect(page).to have_content 'Lista yhteyshenkilöistä'
  end

  it "edit contact person" do
    cp = FactoryGirl.create(:contact_person)
    visit edit_contact_person_path(cp)
    click_on('Päivitä Contact person')
  end

end